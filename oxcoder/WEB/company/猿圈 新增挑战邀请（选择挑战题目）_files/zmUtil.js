var $Util = {
	// 随机数
	rdm : function() {
		return (Math.random() + "").replace(".","");
	},
	// 随机数加前缀
	paramRdm : function() {
		return "b620a3763424aefbe2ff078793ebc1a" + (Math.random() + "").replace(".","");
	},
	// 转换数据
	toHtmlStr: function(str){
		if(typeof str!="string"){
			str=String(str);
		}
		if(String.prototype.replaceAll_br==undefined){
			String.prototype.replaceAll_br = function(s1, s2) {      
				return this.replace(new RegExp(s1, "gm"), s2); //g全局     
			}
		}
		if(str!=undefined&&str!=null){
			return str
				.replaceAll_br("&","&amp;")
				.replaceAll_br(" ","&nbsp;")
				.replaceAll_br("<","&lt;")
				.replaceAll_br(">","&gt;")
				.replaceAll_br("\"","&quot;")
				.replaceAll_br("®","&copy;")
				.replaceAll_br("©","&reg;")
				.replaceAll_br("×","&times;")
				.replaceAll_br("÷","&divide;");
		}else{
			return str; 
		}
	},
	// 判断是否为数字
	isNumber:function(obj){
		return !isNaN(obj);
	},
	// 判断去除空格为空
	isEmpty: function(str){
		return str==null||$.trim(str).length <= 0;
	},
	// 判断字符串长度
	isLengthMax: function(str, len){
		return str.length > len;
	},
	// 判断字符串长度
	isLengthMin: function(str, len){
		return str.length < len;
	},
	// 判断域名规则
	isIpBegin: function(str){
		var reg = new RegExp("^(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)((\\\\|[/]|[:])|$)[\\s\\S]{0,}$");
	    return reg.test(str);
	},
	// 校验中文
	isChinese: function(str){
		var reg = new RegExp("^.*[\\u4E00-\\u9FA5\\uF900-\\uFA2D]+.*$");
		return reg.test(str);
	},
	// 校验邮箱格式
	isEmail: function(str){
		var reg = new RegExp("^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$");
		return reg.test(str);
	},
	// 校验用户名规则
	isUsername: function(str){
		var reg = new RegExp("^[a-zA-Z0-9_]{3,16}$");
		return reg.test(str);
	},
	// 校验密码规则
	isPwd: function(str){
		var reg = new RegExp("^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,22}$");
		return reg.test(str);
	},
	//校验 手机
	isPhoneNum: function (str){
		var reg = new RegExp("^1[3,4,5,8][0-9]{9}$");
		return reg.test(str);
	},
	//js 加法计算  
	accAdd: function (arg1,arg2){   
	  var r1,r2,m;   
	  try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}  
	  try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}  
	  m=Math.pow(10,Math.max(r1,r2))   
	  return ((arg1*m+arg2*m)/m).toFixed(2);   
	},
	//js 减法计算  
	//调用：Subtr(arg1,arg2)  
	//返回值：arg1减arg2的精确结果   
	subtr: function (arg1,arg2,retain){
		if (this.isEmpty(retain) || !this.isNumber(retain)) {
			retain = 2;
		}
	     var r1,r2,m,n;  
	     try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}  
	     try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}  
	     m=Math.pow(10,Math.max(r1,r2));  
	     //last modify by deeka  
	     //动态控制精度长度  
	     n=(r1>=r2)?r1:r2;  
	     return ((arg1*m-arg2*m)/m).toFixed(retain);  
	},
	// 乘法
	accMul: function (arg1,arg2){   
		  var m=0,s1=arg1.toString(),s2=arg2.toString();   
		  try{m+=s1.split(".")[1].length}catch(e){}   
		  try{m+=s2.split(".")[1].length}catch(e){}   
		  return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m);
	},
	// 除法
	accDiv: function(arg1, arg2) {
		var t1 = 0, t2 = 0, r1, r2;
		try {t1 = arg1.toString().split(".")[1].length;} catch (e) {}
		try {t2 = arg2.toString().split(".")[1].length;} catch (e) {}
		with (Math) {
			r1 = Number(arg1.toString().replace(".", ""));
			r2 = Number(arg2.toString().replace(".", ""));
			return (r1 / r2) * pow(10, t2 - t1);
		}
	},
	
	/** 
	* 检查是否为http://开头
	*/ 
	isURLBegin: function(str) {
		return ((str.toLowerCase().indexOf("http://") == 0) || (str.toLowerCase().indexOf("https://") == 0));
	},
	isUUID:function(str){ //检查字符串是不是uuid
		var reg=/^[\w]{8}-[\w]{4}-[\w]{4}-[\w]{4}-[\w]{12}$/ ; 
		return reg.test(str);
	}
};