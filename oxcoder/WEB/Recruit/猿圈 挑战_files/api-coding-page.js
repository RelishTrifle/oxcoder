//全局的编程相关的viewModal
var vm = null;
var editor;
var statistics = {
	codingFlow:[],
	operationFlow:[],
	focusBlurFlow:[],
	brower_name : "",
	brower_version:"",
	system_info:""
}
var cometd = $.cometd;
$(function() {
	// 载入编程信息等待
	$("#modal-loading").modal({
		keyboard : false
	});
	initConn();
	vm = avalon.define({
		$id : "codingModel",
		connected : false,
		connId : "",
		projectInfo : {
			pid : "",
			pname : "",
			chineseName : "",
			ptype : "",
			ptypeName : "",
			target : "",
			totalTime : 0,
			countDown : 0,
			order : "",
			projectCount : 1,
			code : "",
			previewfileExist : false,
			codepath: "",
			loadCodeNoteOk : false,
			codeNode : null
		},
		projectRuntime : {
			compileSwitch : true,
			compileSwitchCountdown : 3,
			intervalCompile : null,
			timeoutCompile : false,
			isSub : 0
		},
		projectOrder : $("#input-order").val(),
		projectCount : 1,
		intervalCountdown : null,
		modalInfo : {
			modalTitle : "",
			modalContent : "",
			modalBtn : ""
		},
		firstName : "司徒",
		lastName : "正美",
		fullName : {// 一个包含set或get的对象会被当成PropertyDescriptor，
			set : function(val) {// 里面必须用this指向scope，不能使用scope
				var array = (val || "").split(" ");
				this.firstName = array[0] || "";
				this.lastName = array[1] || "";
			},
			get : function() {
				return this.firstName + " " + this.lastName;
			}
		}
	})
	avalon.scan()
	$(function() {
		// 设置jQuery Ajax全局的参数
		$.ajaxSetup({
			type : "POST",
			error : function(jqXHR, textStatus, errorThrown) {
				switch (jqXHR.status) {
				case (500):
					console.log("服务器系统内部错误");
					break;
				case (401):
					console.log("未登录");
					break;
				case (403):
					console.log("无权限执行此操作");
					break;
				case (408):
					console.log("请求超时");
					break;
				default:
					console.log("连接失败，请检查网络。");
				}
			},
			success : function(data) {
				// alert("操作成功");
			}
		});
	});
	$.ajax({
		async : true,
		type : "post",
		dataType : "json",
		url : "codingInfo",
		data : {
			"reid" : $("#input-reid").val(),
			"order" : vm.projectOrder,
			"user_token" : $("#input-userToken").val(),
			"corp_token" : $("#input-corpToken").val(),
			"remoteClientId" : $("#input-remoteClientId").val()
		},
		success : function(data) {
			// alert2);
			// console.log(data)
			vm.projectInfo = data;
			console.log("调试信息：倒计时（请求刚完成时）" + vm.projectInfo.countDown)
			editor.setValue(data.code);
			// 重置统计数据
			recoveryAll();
			initStatistics();
			// 开始倒计时
			countDown();
			initEditor(data.ptype);
			hideModal("#modal-loading");
		},
		error : function(data) {
			console.log(data);
		}
	});

	// 监听项目的顺序
	vm.$watch("projectOrder", function(newValue, oldValue) {
		if (vm.projectOrder >= 0
				&& vm.projectOrder <= vm.projectInfo.projectCount) {
			$.ajax({
				async : true,
				type : "post",
				dataType : "json",
				url : "codingInfo",
				data : {
					"reid" : $("#input-reid").val(),
					"user_token" : $("#input-userToken").val(),
					"corp_token" : $("#input-corpToken").val(),
					"order" : newValue
				},
				success : function(data) {
					// alert1);
					vm.projectInfo = data;
					editor.setValue(data.code);
					avalon.log("调试信息：项目的总编译时间为" + vm.projectInfo.totalTime
							+ "秒")
					// $('#modal-complete').modal("hide");
					recoveryAll();
					initStatistics();
					// countDown();
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					console.log(XMLHttpRequest.status);
					console.log(XMLHttpRequest.readyState);
					console.log(textStatus);
					alert("与服务器连接出现错误：" + textStatus + "！请确保网络状况良好并刷新页面。");
				}
			});
		}

	})
	// 编译超时
	vm.projectRuntime.$watch("timeoutCompile", function(newValue, oldValue) {
		if (newValue) {
			if (vm.projectRuntime.isSub == 0) {
				clearInterval(intervalCompile);
				hideModal("#waiting");
				$('#modal-timeout').modal({
					keyboard : false
				});
				vm.projectRuntime.timeoutCompile = false;
			} else {
				hideModal("#waiting-auto");
				if (vm.projectOrder < vm.projectInfo.projectCount) {
					vm.modalInfo = {
						modalTitle : "",
						modalContent : "正在载入下一题。请稍候......",
						modalBtn : ""
					}
				} else {
					vm.modalInfo = {
						modalTitle : "",
						modalContent : "所有题目都已完成，正在跳转到结果页面。",
						modalBtn : ""
					}
				}

				$('#modal-complete').modal({
					keyboard : false
				});
				setTimeout(function() {
					hideModal("#modal-complete");

				}, 2000);
				// alert3);
				vm.projectOrder++;
			}

		}

	});
	// 编译超时
	vm.projectRuntime.$watch("compileSwitchCountdown", function(newValue,
			oldValue) {
		if (newValue > 0) {
			// $('#areaSelect').attr("disabled",true);
			// $('#areaSelect').attr("disabled","disabled");
			$("#btn-stop-compile").attr("disabled", true);
		} else {
			$("#btn-stop-compile").attr("disabled", false);
		}

	});
	// 点击运行按钮
	$("#btn-run").click(function() {
		compile(0);
	});
	// 点击提交按钮
	$("#btn-submit").click(function() {
		console.log(1);
		$('#modal-confirm').modal({
			keyboard : false,
			backdrop : "static",
			show : true
		});
	});
	// // 提交确认提示框的提交按钮
	// $("#btn-confirm-submit").click(function() {
	// compile(1);
	// });
	// 设置信息显示框的大小
	setSize(LOG_SIZE_CONSTANT.initial);
	$(window).resize(function() {
		setSize(LOG_SIZE_CONSTANT.initial);
	});
	$("#div-maxsize").click(function() {
		setSize(LOG_SIZE_CONSTANT.maxsize);
	});
	$("#div-minisize").click(function() {
		setSize(LOG_SIZE_CONSTANT.minisize);
	});
	// 点击停止编译按钮
	$("#btn-stop-compile").click(function() {
		hideModal("#waiting");
		clearInterval(intervalCompile);
	});
});
function countDown() {
	clearInterval(intervalCountdown);
	// 初始化倒计时,并倒计时
	if (vm.projectInfo.countDown > 0) {
		intervalCountdown = setInterval(function() {

			vm.projectInfo.countDown--;
			if (vm.projectInfo.countDown <= 10) {
				$("#count-down").css("color", "red");
			}
			// console.log("调试信息：当前倒计时剩余" + vm.projectInfo.countDown + "秒");
			if (vm.projectInfo.countDown <= 0) {
				compile(1);
				vm.projectInfo.countDown == 0;
				clearInterval(intervalCountdown);
			}
		}, 1000)
	} else if (vm.projectInfo.countDown <= 0) {
		compile(1);
		vm.projectInfo.countDown = 0;
	}

}

// 编译
function compile(isSub) {
	code = editor.getValue();
	if (code == null || code.trim() == "" || code.trim().length == 0) {
		$('#modal-timeout').modal({
			keyboard : false
		});
		return;
	}
	vm.projectRuntime.isSub = isSub;
	if (isSub == 3) {
		vm.projectRuntime.isSub = 1;
	}

	// 设置编译开始时间
	var compileStartTime = (new Date()).getTime();

	// 最小化运行状态提示框
	setSize(LOG_SIZE_CONSTANT.minisize);
	// 清空信息
	$(".text-log").text("");
	// 模态框显示的内容
	vm.modalInfo = {
		modalTitle : "编译中，请稍候...",
		modalContent : "",
		modalBtn : "停止编译"
	}
	console.log("调试信息：开始编译时，项目order是" + vm.projectOrder);
	// 标志第几次编译
	var requestOrder = 1;
	// 显示等待的模态框
	if (vm.projectRuntime.isSub == 0) {

		$('#waiting').modal({
			keyboard : false,
			backdrop : "static",
			show : true
		});
		console.log("这是");
		countdownCompile();
	} else {
		$('#waiting-auto').modal({
			keyboard : false,
			backdrop : "static",
			show : true
		});
	}
	if (vm.connected) {
		// Publish on a service channel since the message is
		// for the server only
		var code = editor.getValue() + "";
		console.log("代码为" + code)
		cometd.publish("/service/hello", {
			status : "online",
			"pid" : vm.projectInfo.pid,
			"code" : editor.getValue(),
			"connId" : vm.connId,
			"remoteClientId" : $("#input-remoteClientId").val(),
			"reid" : $("#input-reid").val(),
			"isSub" : isSub,
			"order" : vm.projectOrder,
			"thinkTime" : thinkTime,
			"speed" : speed,
			"costTime" : (new Date()).getTime() - thinkTimeStart,
			// "compileTime" : (new Date()).getTime() - compileStartTime,
			"user_token" : $("#input-userToken").val(),
			"corp_token" : $("#input-corpToken").val(),
			"count_down" : vm.projectInfo.countDown,
			"openUser" : $("#input-openUser").val()

		}, function(response) {
			if (response.successful) {
				console.log(response);
			} else {
				console.log(response.data);
				console.log("与服务器连接出现错误：" + textStatus + "！请确保网络状况良好并刷新页面。");
				hideModal("#waiting");
				hideModal("#waiting-auto");
				clearInterval(intervalCompile);
			}

		});

	} else {
		console.log("未连接");
	}

}
// 停止编译的倒计时
function countdownCompile() {
	vm.projectRuntime.compileSwitchCountdown = 3;
	intervalCompileCountdown = setInterval(function() {
		vm.projectRuntime.compileSwitchCountdown--;
		if (vm.projectRuntime.compileSwitchCountdown <= 0) {
			clearInterval(intervalCompileCountdown);
		}
	}, 1000);

}
// 恢复所有数值
function recoveryAll() {

	editor.clearSelection();
	// 恢复统计相关
	$("#count-down").css("color", "black");
	/**
	 * 思考时间
	 */
	thinkTime = 0;
	/**
	 * 打字速度
	 */
	speed = 0;
	/**
	 * 判断是否第一次获得焦点
	 */
	isSpeedStart = true;
	startStr;
	endLength;

	/**
	 * 开始的时间
	 */
	thinkTimeStart = (new Date()).getTime();
	console.log("调试信息：开始时间重置");
	thinkTimeEnd = 0;
	firstInput = true;

	// 恢复编译超时
	vm.projectRuntime.timeoutCompile = false;
	// 恢复提交
	vm.projectRuntime.isSub = 0;
	clearInterval(intervalCountdown);
	// 开始倒计时
	countDown();
}
// 隐藏模态框
function hideModal(modalId) {
	$(modalId).modal("hide");
	$(".modal-backdrop").hide();
}
// 初始化编辑器
function initEditor(ptype) {
//	var langTools = ace.require("ace/ext/language_tools");
//	var editor = ace.edit("editor");
//	editor.setTheme("ace/theme/idle_fingers");
	switch (ptype) {
	case 1:
		editor.getSession().setMode("ace/mode/java");
		console.log("切换到java");
		break;
	case 2:
		editor.getSession().setMode("ace/mode/java");
		console.log("切换到android");
		break;
	case 3:
		editor.getSession().setMode("ace/mode/objectivec");
		console.log("切换到oc");
		break;
	case 4:
		editor.getSession().setMode("ace/mode/c_cpp");
		console.log("切换到c");
		break;
	case 5:
		editor.getSession().setMode("ace/mode/c_cpp");
		console.log("切换到c++");
		break;
	case 6:
		editor.getSession().setMode("ace/mode/php");
		console.log("切换到php");
		break;
	case 7:
		editor.getSession().setMode("ace/mode/python");
		console.log("切换到python");
		break;
	case 8:
		editor.getSession().setMode("ace/mode/ruby");
		console.log("切换到ruby");
		break;
	case 301:
		editor.getSession().setMode("ace/mode/objectivec");
		console.log("切换到oc");
		break;
	default:
		break;
	}
	
//	代码补全
	editor.setOptions({
		enableBasicAutocompletion : true,
		enableLiveAutocompletion : true
	});


}
function initConn() {
	function _connectionEstablished() {
		// $('#body').append(
		// '<div>CometD Connection Established</div>');
		// console.log("CometD Connection Established");
	}

	function _connectionBroken() {
		// $('#body').append('<div>CometD Connection Broken</div>');
		console.log("CometD Connection Broken");
	}

	function _connectionClosed() {
		// $('#body').append('<div>CometD Connection Closed</div>');
		console.log("CometD Connection Closed");
	}

	// Function that manages the connection status with the Bayeux
	// server
	function _metaConnect(message) {
		if (cometd.isDisconnected()) {
			vm.connected = false;
			_connectionClosed();
			return;
		}

		var wasConnected = vm.connected;
		vm.connected = message.successful === true;
		if (!wasConnected && vm.connected) {
			_connectionEstablished();
		} else if (wasConnected && !vm.connected) {
			_connectionBroken();
		}
	}
	// Function invoked when first contacting the server and
	// when the server has lost the state of this client
	// 握手
	function _metaHandshake(handshake) {
		if (handshake.successful === true) {

			cometd
					.batch(function() {
						cometd
								.subscribe(
										'/service/returna',
										function(message) {
											console.log(message.data);
											/* kbDom.innerHTML = kb.pid; */
											// console.log("返回成功"
											// + message.data.statusCode
											// + message.data.runinfo
											// + message.data.order);
											if (message.data.statusCode == COMPILE_INFO.error
													|| message.data.statusCode == COMPILE_INFO.success) {
												console.log("调试信息：编译完成")
												if (vm.projectRuntime.isSub == 0) {
													if (message.data.statusCode == COMPILE_INFO.error) {
														$(".text-log").css(
																"color",
																"black");
													} else {
														$(".text-log").css(
																"color",
																"black");
													}
													$(".text-log")
															.text(
																	message.data.runinfo);
													setSize(LOG_SIZE_CONSTANT.maxsize);
												} else if (vm.projectRuntime.isSub == 1) {
													// 如果是提交的话，不显示运行编译的信息
													$(".text-log").text("");
												} else {
													console.log("调试信息：isSub错误");
												}
												hideModal("#waiting");
												hideModal("#waiting-auto");
												// $('#waiting').modal('hide');

												if (1 == vm.projectRuntime.isSub
														&& message.data.order > vm.projectOrder) {
													if (vm.projectOrder < vm.projectInfo.projectCount) {
														vm.modalInfo = {
															modalTitle : "",
															modalContent : "正在载入下一题。请稍候......",
															modalBtn : ""
														}
													} else {
														vm.modalInfo = {
															modalTitle : "",
															modalContent : "所有题目都已完成，正在跳转到结果页面。",
															modalBtn : ""
														}
													}

													$('#modal-complete')
															.modal(
																	{
																		keyboard : false
																	});

													setTimeout(
															function() {
																hideModal("#modal-complete");

															}, 2000);
													// 这里是跳转到下一题或者跳转到结果页面
													if (vm.projectOrder < vm.projectInfo.projectCount) {
														console
																.log("调试信息projectOrder增加了")
														vm.projectOrder++;
														// alert"增加");
														console
																.log("调试信息：编译完成后，项目order为"
																		+ vm.projectOrder)
													} else {
														// location
														// .replace("user-challenge-result.action?reid="
														// + $(
														// "#input-reid")
														// .val());
														console
																.log("调试信息：正在跳转到结果页面。");
														console.log(message.data);
														if(message.data.openUser==1001){
															window.location = "http://123.57.255.83:10101/OxcoderDev/open/chuanke/to_evalution_result?user_token="+$("#input-userToken").val()+"&recruit_id="+$("#input-reid").val()+"&access_token="+$("#input-ac").val();
														}
													}

													// })

													// compile(1);
												}
											} else if (message.data.statusCode == COMPILE_INFO.timeout) {
												console.log("编译超时");
												vm.projectRuntime.timeoutCompile = true;
											} else if (message.data.statusCode == COMPILE_INFO.codeError) {
												hideModal("#waiting");
												hideModal("#waiting-auto");
												vm.modalInfo = {
													modalTitle : "代码错误",
													modalContent : "代码错误，请检查程序逻辑。",
													modalBtn : ""
												}
												$('#modal-notice').modal({
													keyboard : false
												});
											}
										}, function(subscribeReply) {
											if (subscribeReply.successful) {
												// The server successfully
												// subscribed this client to the
												// "/foo" channel.
												console.log("接受成功");
											} else {

												console.log("接受失败");
											}
										});
						// 提交确认提示框的提交按钮
						$("#btn-confirm-submit").click(function() {
							compile(1);
						});
						// 推荐按钮
						$("#btn-recommand").click(function() {
							compile(3);
						});
					});
			vm.connId = handshake.clientId;
		} else {
			console.error("连接出错");
		}

	}

	// Disconnect when the page unloads
	$(window).unload(function() {
		cometd.disconnect(true);
	});

	// var cometURL = location.protocol + "//" + location.host
	// + config.contextPath + "/cometd";
	var cometURL = $("#input-compile-url").val() + "/cometd";
	cometd.configure({
		url : cometURL,
		logLevel : 'error'
	});
	cometd.addListener('/meta/handshake', _metaHandshake);
	cometd.addListener('/meta/connect', _metaConnect);

	cometd.handshake();
}
