function ZM_PageCtrl(){
	this.callBackFun = null; 
	this.pageTurn = function(pageCode){
		if(this.callBackFun!=null&& typeof(this.callBackFun) =="function"){
			var pageSize =  $.trim( $("#page_pageSize").val());
			this.callBackFun(pageCode,pageSize);
		}else{
			alert("not found callBackFun");
		}
	};
	this.apPageTurn = function(){
		if(this.callBackFun!=null&& typeof(this.callBackFun) =="function"){
			var pageSize = $.trim( $("#page_pageSize").val());
			var pageCode = $.trim( $("#page_pageCode").val());
			if(pageCode!=undefined&&pageCode!=""&&!isNaN(pageCode)){
				this.callBackFun(pageCode,pageSize);
			}else{
				$("#page_pageCode").val("");
			}
		}else{
			alert("not found callBackFun");
		}
	};
}
var $PageCtrl = new ZM_PageCtrl(); 
//var $SortCtrl = new ZM_SortCtrl();
//function ZM_SortCtrl(){
//	this.callBackFun = null; 
//	this.sortKey=null;
//	this.isUp = false;
//	this.sort= function(sStr){
//		if(this.sortKey==sStr){
//			this.isUp=!this.isUp;
//		}else{
//			this.sortKey = sStr;
//			this.isUp=false;
//		}
//		if(this.callBackFun!=null&&typeof(this.callBackFun)=="function"){
//			this.callBackFun();
//		}
//	};
//}


