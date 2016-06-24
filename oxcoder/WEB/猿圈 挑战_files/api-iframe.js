/* JPEGCam v1.0.9 */
/* Webcam library for capturing JPEG images and submitting to a server */
/* Copyright (c) 2008 - 2009 Joseph Huckaby <jhuckaby@goldcartridge.com> */
/* Licensed under the GNU Lesser Public License */
/* http://www.gnu.org/licenses/lgpl.html */

/* Usage:
 <script language="JavaScript">
 document.write( webcam.get_html(320, 240) );
 webcam.set_api_url( 'test.php' );
 webcam.set_hook( 'onComplete', 'my_callback_function' );
 function my_callback_function(response) {
 alert("Success! PHP returned: " + response);
 }
 </script>
 <a href="javascript:void(webcam.snap())">Take Snapshot</a>
 */

// Everything is under a 'oxcoder' Namespace
//document
//		.write("<script language=javascript src='http://123.57.190.78:8080/Oxcoder/jquery/jquery.cometd.js' charset='UTF-8'></script>");
window.oxCompiler = {
	version : '1.0.0',
	// globals
	ie : !!navigator.userAgent.match(/MSIE/),
	protocol : location.protocol.match(/https/i) ? 'https' : 'http',
	callback : null, // user callback for completed uploads
	backURL:"",
	compilerURL : 'http://www.oxcoder.com/Oxcoder', // URI to
	cometd : null,
	connected : false,
	remoteClientId : null,
	reid : null,
	pid:null,
	access_token : null,
	user_token : null,
	loaded : false, // true when webcam movie finishes loading
	stealth : false, // stealth mode (do not freeze image upon capture)
	hooks : {
		onConnectionEstablished : null,
		onConnectionBroken : null,
		onCompileFinished : null,
		onError : null
	},
	set_hook: function(name, callback) {
		// set callback hook
		// supported hooks: onLoad, onComplete, onError
		if (typeof(this.hooks[name]) == 'undefined')
			return showInfo("Hook type not supported: " + name);
		
		this.hooks[name] = callback;
	},
	initUI:function(){
		$("body,#oxCompiler").css({
			"width":"100%",
			"height":"100%",
			"margin": '0',
			"position": "relative"
		});
		$("#ox-top-bar").css({
			"width": "80px",
			"height": "30px",
			"top": "18px",
			"left": "0",
			"position": "fixed",
			"z-index": "10000",
			"text-align": "center",
			"color": "#fff"
		});
		$("#back-a").css({
			"color": "#fff",
			"text-decoration":"none"
		});
		
	},
	getHtml : function(width, height, server_width, server_height) {
		// Return HTML for embedding webcam capture movie
		// Specify pixel width and height (640x480, 320x240, etc.)
		// Server width and height are optional, and default to movie
		// width/height
		if (!server_width)
			server_width = width;
		if (!server_height)
			server_height = height;

		var html = "<div id='ox-top-bar'>" +
		"<a id='back-a' href='" +
		oxCompiler.backURL+
		"'> << 返回</a>" +
		"</div>" +
		"<iframe onload='oxCompiler.initUI()' "
		+ "id='if_api' style='width: 100%; height: 100%;display:none'>" + "</iframe>";
//		if($("#input-typeDev").val()=="challenge"){
//			html += "<div id='ox-top-bar'>" +
//			"<a id='back-a' href='" +
//			oxCompiler.backURL+
//			"'> << 返回</a>" +
//			"</div>" +
//			"<iframe onload='oxCompiler.initUI()' "
//			+ "id='if_api' style='width: 100%; height: 100%' src='"
//			+ this.compilerURL + "/codingPage?reid=" + this.reid + "&access_token="
//			+ this.access_token + "&user_token=" + this.user_token
//			+ "&remoteClientId=" + oxCompiler.remoteClientId + "'>" + "</iframe>";
//		}else if($("#input-typeDev").val()=="practice"){
//			html += "<div id='ox-top-bar'>" +
//			"<a id='back-a' href='" +
//			oxCompiler.backURL+
//			"'> << 返回</a>" +
//			"</div>" +
//			"<iframe onload='oxCompiler.initUI()' "
//			+ "id='if_api' style='width: 100%; height: 100%' src='"
//			+ this.compilerURL + "/codingPagePractice?pid=" + this.pid + "&access_token="
//			+ this.access_token + "&user_token=" + this.user_token
//			+ "&remoteClientId=" + oxCompiler.remoteClientId + "'>" + "</iframe>";
//		}
		

		return html;
	},// callback hook functions
	setHook : function(name, callback) {
		// set callback hook
		// supported hooks: onLoad, onComplete, onError
		if (typeof (this.hooks[name]) == 'undefined')
			return showInfo("不允许的回调状态: " + name);

		this.hooks[name] = callback;
	},
	fireHook : function(name, value) {
		// fire hook callback, passing optional value to it
		if (this.hooks[name]) {
			if (typeof (this.hooks[name]) == 'function') {
				// callback is function reference, call directly
				this.hooks[name](value);
			} else if (typeof (this.hooks[name]) == 'array') {
				// callback is PHP-style object instance method
				this.hooks[name][0][this.hooks[name][1]](value);
			} else if (window[this.hooks[name]]) {
				// callback is global function name
				window[this.hooks[name]](value);
			}
			return true;
		}
		return false; // no hook defined
	},
	initConnection : function() {
		oxCompiler.cometd = $.cometd;
		oxCompiler.connected = false;
		function _connectionEstablished() {
			// $('#body').append(
			// '<div>CometD Connection Established</div>');
			console.log("CometD Connection Established");
		}

		function _connectionBroken() {
			// $('#body').append('<div>CometD Connection
			// Broken</div>');
			console.log("CometD Connection Broken");
		}

		function _connectionClosed() {
			// $('#body').append('<div>CometD Connection
			// Closed</div>');
			console.log("CometD Connection Closed");
		}

		// Function that manages the connection status with the
		// Bayeux
		// server
		function _metaConnect(message) {
			if (oxCompiler.cometd.isDisconnected()) {
				oxCompiler.connected = false;
				_connectionClosed();
				return;
			}

			var wasConnected = oxCompiler.connected;
			connected = message.successful === true;
			if (!wasConnected && oxCompiler.connected) {
				_connectionEstablished();
			} else if (wasConnected && !oxCompiler.connected) {
				_connectionBroken();
			}
		}
		// Function invoked when first contacting the server and
		// when the server has lost the state of this client
		// 握手
		function _metaHandshake(handshake) {
			if (handshake.successful === true) {
				// 建立连接
				oxCompiler.remoteClientId = handshake.clientId;
				console.log("remoteClientId" + oxCompiler.remoteClientId);
				
				
				oxCompiler.cometd.batch(function() {
					oxCompiler.cometd.publish("/service/register", {
						status : "online",
					}, function(response) {
						if (response.successful) {
							//写入html
							$("#container-loading").hide();
							$("#oxCompiler").html(oxCompiler.getHtml());
							var if_src="";
							if($("#input-typeDev").val()=="challenge"){
								if_src = oxCompiler.compilerURL + "/codingPage?reid=" + oxCompiler.reid + "&access_token="
								+ oxCompiler.access_token + "&user_token=" + oxCompiler.user_token
								+ "&remoteClientId=" + oxCompiler.remoteClientId;
							}else if($("#input-typeDev").val()=="practice"){
								if_src = oxCompiler.compilerURL + "/codingPagePractice?pid=" + oxCompiler.pid + "&access_token="
								+ oxCompiler.access_token + "&user_token=" + oxCompiler.user_token
								+ "&remoteClientId=" + oxCompiler.remoteClientId;
							}
							$("#if_api").attr("src",if_src);
							$("#if_api").show();
							console.log("注册成功");
						} else {
							console.log("注册失败");
						}

					});
					oxCompiler.cometd.subscribe('/service/compileok',
							function(message) {
								console.log(message.data);
//								alert(1);
								oxCompiler.fireHook('onCompileFinished', message
										.toString()+message.data.statusCode);
								if (message.data.statusCode == 1) {
//									oxCompiler.fireHook('onCompileFinished', msg
//											.toString());
								} else {
									oxCompiler.fire_hook('onError', msg.toString());
								}

							}, function(subscribeReply) {
								console.log("进入这里");
							});
				});
				connId = handshake.clientId;
			} else {
				console.error("连接出错");
			}
		}

		// Disconnect when the page unloads
		$(window).unload(function() {
			oxCompiler.cometd.disconnect(true);
		});

		var cometURL = oxCompiler.compilerURL + "/cometd";
		oxCompiler.cometd.configure({
			url : cometURL,
			logLevel : 'error'
		});
		oxCompiler.cometd.addListener('/meta/handshake', _metaHandshake);
		oxCompiler.cometd.addListener('/meta/connect', _metaConnect);
		oxCompiler.cometd.handshake();
		
	}

};
