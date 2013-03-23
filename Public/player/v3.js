document.write('<object type="application/x-shockwave-flash" data="/Public/player/vcastr3.swf" width="640" height="480" id="vcastr3">');
			document.write('<param name="movie" value="/Public/player/vcastr3.swf"/>'); 
			document.write('<param name="allowFullScreen" value="true" />');
			document.write('<param name="FlashVars" value="xml=');
			document.write('<vcastr>');
					document.write('<channel>');
					for(var i=0; i < arr.length;i++)
					{
						document.write('<item>');
							document.write('<source>'+arr[i].url+'</source>');
							document.write('<duration></duration>');
							document.write('<title>'+arr[i].title+'</title>');
						document.write('</item>');
						
					}
					document.write('</channel>');
					document.write('<config>');
                    	document.write('<bufferTime>2</bufferTime>');
		document.write('<contralPanelAlpha>0.75</contralPanelAlpha>');
		document.write('<controlPanelBgColor>0x333333</controlPanelBgColor>');
		document.write('<controlPanelBtnColor>0xededed</controlPanelBtnColor>');
		document.write('<contralPanelBtnGlowColro>0x330000</contralPanelBtnGlowColro>');
		document.write('<controlPanelMode>bottom</controlPanelMode>');
		document.write('<defautVolume>0.7</defautVolume>');
		document.write('<isAutoPlay>false</isAutoPlay>');
		document.write('<isLoadBegin>true</isLoadBegin>');
		document.write('<isShowAbout>true</isShowAbout>');
		document.write('<scaleMode>showAll</scaleMode>');
		document.write('<isRepeat>false</isRepeat>');
					document.write('</config>');
					document.write('<plugIns>');
		document.write('<logoPlugIn>');
			document.write('<url>/Public/player/logoPlugIn.swf</url>');
			document.write('<logoText>www.xxoo.com</logoText>');
			document.write('<logoTextAlpha>0.75</logoTextAlpha>');
			document.write('<logoTextFontSize>30</logoTextFontSize>');
			document.write('<logoTextLink>http://www.daimakuai.com</logoTextLink>');
			document.write('<logoTextColor>0xffffff</logoTextColor>');
			document.write('<textMargin>20 20 auto auto</textMargin>');
			document.write('<logoClipAlpha>1</logoClipAlpha>');
			document.write('<clipMargin>20 0 auto auto</clipMargin>');
		document.write('</logoPlugIn>');
        document.write('<javaScriptPlugIn>');
		document.write('<url>/Public/player/javaScriptPlugIn.swf</url>');
		document.write('</javaScriptPlugIn>');
		document.write('</plugIns>');
        document.write('</vcastr>"/>');
		document.write('</object>');