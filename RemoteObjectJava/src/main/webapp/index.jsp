<html>
<body>
	<h2>Hello World!</h2>
	<div id="flashContent"></div>
	<noscript>
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			width="100%" height="100%" id="TopologicalGraph">
			<param name="movie" value="RemoteObject.swf" />
			<param name="quality" value="high" />
			<param name="allowScriptAccess" value="sameDomain" />
			<param name="allowFullScreen" value="true" />
			<!--[if !IE]>-->
			<object type="application/x-shockwave-flash" data="RemoteObject.swf"
				width="100%" height="100%">
				<param name="quality" value="high" />
				<param name="allowScriptAccess" value="sameDomain" />
				<param name="allowFullScreen" value="true" />
				<!--<![endif]-->
				<!--[if gte IE 6]>-->
				<p>Either scripts and active content are not permitted to run or
					Adobe Flash Player version 10.2.0 or greater is not installed.</p>
				<!--<![endif]-->
				<a href="http://www.adobe.com/go/getflashplayer"> <img
					src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
					alt="Get Adobe Flash Player" />
				</a>
				<!--[if !IE]>-->
			</object>
			<!--<![endif]-->
		</object>
	</noscript>
	<script type="text/javascript">
   // For version detection, set to min. required Flash Player version, or 0 (or 0.0.0), for no version detection. 
   var swfVersionStr = "10.2.0";
   // To use express install, set to playerProductInstall.swf, otherwise the empty string. 
   var xiSwfUrlStr = "playerProductInstall.swf";
   var flashvars = {};
   flashvars.locale="";   
   var params = {};
   params.quality = "high";
   params.allowscriptaccess = "sameDomain";
   params.allowfullscreen = "true";
   params.wmode="transparent";
   var attributes = {};
   attributes.id = "TopologicalGraph";
   attributes.name = "TopologicalGraph";
   attributes.align = "middle";
   attributes.wmode = "transparent";
   swfobject.embedSWF(
       "RemoteObject.swf", "flashContent", 
       "100%", "99.7%", 
       swfVersionStr, xiSwfUrlStr, 
       flashvars, params, attributes,this.renderCallback);
   function renderCallback(obj){
   	if(!obj.success){
   		if(!swfobject.hasFlashPlayerVersion(swfVersionStr)){
   			var swfobject_doc=document.getElementById(obj.id);
   			if(swfobject_doc){
   				swfobject_doc.innerHTML = '<div style="color: #CCC;font-size:13px;"><center>您未安装Flash Player或Flash Player版本过低, 请下载最新的Flash Player</center></div>';
   				Loading.stop();
   			}
   		}
   	}
   }
   // JavaScript enabled so display the flashContent div in case it is not replaced with a swf object.
   swfobject.createCSS("#flashContent", "display:block;text-align:left;");  
   </script>
   <object  classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  
      id="flex" width="250" height="100"  
      codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">  
      <param name="movie" value="JspToFlex.swf"/>  
      <param name="quality" value="high" />  
      <param name="bgcolor" value="#869ca7" />  
      <param name="allowScriptAccess" value="sameDomain" />  
      <embed src="RemoteObject.swf" quality="high" bgcolor="#869ca7"  
      width="400px" height="400px" name="flex" align="middle"  
      allowScriptAccess="sameDomain"  
      type="application/x-shockwave-flash"  
      pluginspage="http://www.adobe.com/go/getflashplayer">  
      </embed>  
     </object>  
</body>
</html>
