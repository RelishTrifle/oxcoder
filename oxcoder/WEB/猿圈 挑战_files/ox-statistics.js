$(function(){
	statistics.system_info = BrowserMatch.OS;
	statistics.brower_name = BrowserMatch.browser;
	statistics.brower_version = BrowserMatch.version;
	
	//console.log(statistics.system_info+"#"+statistics.brower_name+"#"+statistics.brower_version);
	avalon.config({
		debug: true,
		baseUrl: "res/sysFile/js/avalon/store",
	})
	require(["avalon","avalon.store"], function(){
		
		editor.on("change", function(e){
			var editorOperation={};
			if(e.data.action=="insertLines"){
				editorOperation = {
						count_down: vm.projectInfo.countDown,
						lines:e.data.lines,
						start : {
							row:e.data.range.start.row,
							column:e.data.range.start.column
						},
						end : {
							row:e.data.range.end.row,
							column:e.data.range.end.column
						},
						action : e.data.action
					}
				
			}else{
				editorOperation = {
						count_down: vm.projectInfo.countDown,
						text:e.data.text,
						start : {
							row:e.data.range.start.row,
							column:e.data.range.start.column
						},
						end : {
							row:e.data.range.end.row,
							column:e.data.range.end.column
						},
						action : e.data.action
					}
			}
			statistics.codingFlow.push(editorOperation);
			
			//console.log(statistics.codingFlow[statistics.codingFlow.length-1].text);
			//console.log(statistics.codingFlow[statistics.codingFlow.length-1].count_down);
			
			//console.log(e);
			//console.log(e.data.range.end);
			//console.log(e.data.range.start);
			//console.log("#"+e.data.text+"#");
			//console.log(e.data.text);
		})
		editor.on("paste", function(e){
			
			var editorOperation = {
				count_down: vm.projectInfo.countDown,
				text: e.text,
				operationType : 2
			}
			statistics.operationFlow.push(editorOperation);
			
			//console.log(e);
			//console.log(statistics.operationFlow[statistics.operationFlow.length-1].text);
			//console.log(statistics.operationFlow[statistics.operationFlow.length-1].count_down);
		})
		editor.on("copy", function(e){
			
			var editorOperation = {
				count_down: vm.projectInfo.countDown,
				text: e,
				operationType : 1
			}
			statistics.operationFlow.push(editorOperation);
			
			//console.log(e);
			//console.log(statistics.operationFlow[statistics.operationFlow.length-1].text);
			//console.log(statistics.operationFlow[statistics.operationFlow.length-1].count_down);
		})
		
		editor.on("focus", function(e){
			
			var editorFocusBlur = {
				count_down: vm.projectInfo.countDown,
				focus_blur_type : 1
			}
			statistics.focusBlurFlow.push(editorFocusBlur);
			
			//console.log(e);
			//console.log(statistics.focusBlurFlow[statistics.focusBlurFlow.length-1].count_down);
		})
		editor.on("blur", function(e){
			
			var editorFocusBlur = {
				count_down: vm.projectInfo.countDown,
				focus_blur_type : 2
			}
			statistics.focusBlurFlow.push(editorFocusBlur);
			
			//console.log(e);
			//console.log(statistics.focusBlurFlow[statistics.focusBlurFlow.length-1].count_down);
		})
		
		$(window).focus(function(e){
			var editorFocusBlur = {
					count_down: vm.projectInfo.countDown,
					focus_blur_type : 3
				}
				statistics.focusBlurFlow.push(editorFocusBlur);
				
				//console.log(e);
				//console.log(statistics.focusBlurFlow[statistics.focusBlurFlow.length-1].count_down);
		});
		$(window).blur(function(e){
			var editorFocusBlur = {
					count_down: vm.projectInfo.countDown,
					focus_blur_type : 4
				}
				statistics.focusBlurFlow.push(editorFocusBlur);
				
				//console.log(e);
				//console.log(statistics.focusBlurFlow[statistics.focusBlurFlow.length-1].count_down);
		});
		avalon.store.set("uid","111");
		
		//console.log(avalon.store.get("uid"));
		
		$("#btn-confirm-submit").click(function(){
			
			$.ajax({
				async : true,
				type : "post",
				dataType : "json",
				url : "save_statistics",
				data : {
					"reid" : $("#input-reid").val(),
					"order" : vm.projectOrder,
					"user_token" : $("#input-userToken").val(),
					"corp_token" : $("#input-corpToken").val(),
					"remoteClientId" : vm.connId,
					"coding_flow":JSON.stringify(statistics.codingFlow),
					"operation_flow":JSON.stringify(statistics.operationFlow),
					"focus_blur_flow":JSON.stringify(statistics.focusBlurFlow),
					"system_info" :statistics.system_info,
					"brower_name":statistics.brower_name,
					"brower_version": statistics.brower_version
				},
				success : function(data) {
					vm.projectInfo = data;
					//console.log("调试信息：倒计时（请求刚完成时）" + vm.projectInfo.countDown)
					statistics = {
						codingFlow:[],
						operationFlow:[],
						focusBlurFlow:[]
					}
					statistics.system_info = BrowserMatch.OS;
					statistics.brower_name = BrowserMatch.browser;
					statistics.brower_version = BrowserMatch.version;
					//console.log("清空"+statistics);
				},
				error : function(data) {
					//console.log(data);
					statistics = {
						codingFlow:[],
						operationFlow:[],
						focusBlurFlow:[]
					}
					statistics.system_info = BrowserMatch.OS;
					statistics.brower_name = BrowserMatch.browser;
					statistics.brower_version = BrowserMatch.version;
					//console.log("清空"+statistics);
				}
			});
//			alert();
		});
	})
});
