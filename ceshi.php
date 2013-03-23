<?php
$timeout=600; 
$content=$_POST['content'];
if(strlen($content)<8)
{
	exit("没有找到图片");	
}

$pattern="/<img(.*)src=\"([^\"]+)\"[^>]+>/isU"; 
/*$content='<p align="center"><span style="color:navy;font-family:楷体_GB2312;"><a href="http://news.xinhuanet.com/politics/2011-04/27/c_121351908_2.htm"><img id="{22F30079-F33F-4648-B4C0-D25A1C3E568D}" src="http://news.xinhuanet.com/politics/2011-04/27/121351908_11n.jpg" border="0" /></a></span></p>
<p class="pictext" style="color:navy;font-family:楷体_GB2312;" align="center"><span style="color:navy;font-family:楷体_GB2312;">剧毒农药"敌百虫"和色素。</span></p>'; */
      //$str=str_replace('\"','"',$content);    
	

	 $pattern="/<img(.*)src=\"([^\"]+)\"[^>]+>/isU"; 
$str=$content; 
      $str=str_replace('\"','"',$content);    
	

	  function dmkdir($dir, $mode = 0777, $makeindex = TRUE){
	if(!is_dir($dir)) {
		dmkdir(dirname($dir));
		@mkdir($dir, $mode);
	}
	return true;
}
 preg_match_all($pattern,$str,$match); 
 
 
 
for($i=0;$i<count($match[2]);$i++)
{


	$suo=$match[2][$i];


	if(substr($suo,0,4) !="http")
	{
	exit("没有远程图片");	
	}

$ml=date("Ym")."/".date("d");
$dir="Uploads/other/".$ml;
dmkdir($dir);

$url = $suo;

$matches = parse_url($url);
$host = $matches['host'];
$path = $matches['path'] ? $matches['path'].(isset($matches['query']) ? '?'.$matches['query'] : '') : '/';
$port = !empty($matches['port']) ? $matches['port'] : 80;

$out = "GET $path HTTP/1.0\r\n";
$out .= "Host: $host\r\n";
$out .= "\r\n\r\n";


$fp = @fsockopen($host, $port, $errno, $errstr, 10);


	

stream_set_blocking($fp, TRUE);
stream_set_timeout($fp, $timeout);
@fwrite($fp, $out);
$status = stream_get_meta_data($fp);
while (!feof($fp)) {
 if(($header = @fgets($fp)) && ($header == "\r\n" ||  $header == "\n")) {
  break;
 }
}
$return = '';

while(!feof($fp)) {
 $data = fread($fp, 8192);
 $return .= $data;
}

$attach_ext = strtolower(substr(strrchr($url,'.'),1));  
$filename=md5(rand(100,10000)).".".$attach_ext;
$fp=fopen($dir."/".$filename,"w");
flock($fp,2); 
fwrite($fp, $return); 
$suoluetu[]="/".$filename;
@fclose($fp);

if($i==0)
{
$neirong= str_replace($match[2][$i],"/".$dir.$suoluetu[$i],$content);
}
else
 {
	 
	$neirong= str_replace($match[2][$i],"/".$dir.$suoluetu[$i],$neirong); 
 }
	}
	
	$neirong=str_replace('\"','"',$neirong);
	

        
            if(count($suoluetu)>0)
            {
               die($neirong);
            }
			else
            {
                die("上传失败");
            }
?>