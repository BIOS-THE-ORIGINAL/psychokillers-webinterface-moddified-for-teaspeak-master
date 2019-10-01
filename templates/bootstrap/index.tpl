<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>Teaspeak - Webinterface</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" href="templates/{$tmpl}/gfx/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="templates/{$tmpl}/gfx/tsview.css" type="text/css" media="screen" />
<script type="text/javascript">
//<![CDATA[
function Klappen(Id) 
	{
	
	if(Id == 0)
		{
		var i = 1;
		var jetec_Minus="gfx/images/minus.png", jetec_Plus="gfx/images/plus.png";
		
		if(document.getElementById('Pic0').name == 'plus')
			{
			document.getElementById('Pic0').src = jetec_Minus;
			document.getElementById('Pic0').name = 'minus';
			var openAll = 1;
			}
			else
			{
			document.getElementById('Pic0').src = jetec_Plus;
			document.getElementById('Pic0').name = 'plus';
			var openAll = 0;
			}
		while(i<100)
			{
			if(document.getElementById('Pic'+i)!=null)
				{
				var KlappText = document.getElementById('Lay'+i);
				var KlappBild = document.getElementById('Pic'+i);
				if (openAll == 1) 
					{
					KlappText.style.display = 'block';
					KlappBild.src = jetec_Minus;
					} 
					else 
					{
					KlappText.style.display = 'none';
					KlappBild.src = jetec_Plus;
					}
				i++;
				}
				else
				{
				break;
				}
			}
		}
	var KlappText = document.getElementById('Lay'+Id);
	var KlappBild = document.getElementById('Pic'+Id);
	var jetec_Minus="gfx/images/minus.png", jetec_Plus="gfx/images/plus.png";
	if (KlappText.style.display == 'none') 
		{
		KlappText.style.display = 'block';
		KlappBild.src = jetec_Minus;
		} 
		else 
		{
		KlappText.style.display = 'none';
		KlappBild.src = jetec_Plus;
		}
	}
	
function oeffnefenster (url) {
 fenster = window.open(url, "fenster1", "width=350,height=150,status=no,scrollbars=yes,resizable=no");
 fenster.opener.name="opener";
 fenster.focus();
}

function hide_select(selectId)
	{
	if(selectId==0)
		{
		document.getElementById("groups").style.display = "";
		document.getElementById("servergroups").style.display = "";
		document.getElementById("channelgroups").style.display = "none";
		document.getElementById("channel").style.display = "none";
		}
	  else if (selectId==1)
		{
		document.getElementById("groups").style.display = "";
		document.getElementById("servergroups").style.display = "none";
		document.getElementById("channelgroups").style.display = "";
		document.getElementById("channel").style.display = "";
		}
		else
		{
		document.getElementById("groups").style.display = "none";
		document.getElementById("servergroups").style.display = "none";
		document.getElementById("channelgroups").style.display = "none";
		document.getElementById("channel").style.display = "none";
		}
	}

var checkflag = "false";

function check(form) 
	{
	if (checkflag == "false") 
		{
		for (i = 0; i < document.forms[form].elements.length; i++) 
			{
			if(document.forms[form].elements[i].name != 'checkall')
				{
				document.forms[form].elements[i].checked = true;
				}
			}
		checkflag = "true";
		return checkflag; 
		}
		else 
		{
		for (i = 0; i < document.forms[form].elements.length; i++) 
			{
				document.forms[form].elements[i].checked = false;
			}
		checkflag = "false";
		return checkflag; 
		}
	}
var conf_arr = new Array();
function confirmArray(sid, name, port, action)
	{
	conf_arr[sid]=new Object();
	conf_arr[sid]['name']=name;
	conf_arr[sid]['port']=port;
	if(document.getElementById("caction"+sid).options.selectedIndex == 0)
		{
		conf_arr[sid]['action']='';
		}
		else if(document.getElementById("caction"+sid).options.selectedIndex == 1)
		{
		conf_arr[sid]['action']='start';
		}
		else if(document.getElementById("caction"+sid).options.selectedIndex == 2)
		{
		conf_arr[sid]['action']='stop';
		}
		else if(document.getElementById("caction"+sid).options.selectedIndex == 3)
		{
		conf_arr[sid]['action']='del';
		}
	}
	
function confirmAction()
	{
	var text="Möchtest du folgende Aktion wirklich ausführen?\n\n";
	for(var i in conf_arr)
		{
		if(conf_arr[i]['action'] == 'start')
			{
			text = text+"***Starten*** "+conf_arr[i]['name']+" "+conf_arr[i]['port']+"\n";
			}
			else if(conf_arr[i]['action'] == 'stop')
			{
			text = text+"***Stoppen*** "+conf_arr[i]['name']+" "+conf_arr[i]['port']+"\n";
			}
			else if(conf_arr[i]['action'] == 'del')
			{
			text = text+"***Löschen*** "+conf_arr[i]['name']+" "+conf_arr[i]['port']+"\n";
			}
		}
	return text;
	}
//]]>
</script>
</head>
<body>
    {include file="{$tmpl}/head.tpl"}
<div class="container" id="content">
    <div class="row">
    {include file="{$tmpl}/showupdate.tpl"}
    {include file="{$tmpl}/mainbar.tpl"}
    {include file="{$tmpl}/{$site}.tpl"}
    </div>
</div>
</main>
<footer class="credits-footer">
    {$footer}
    <p>Theme by <a href="https://forum.teaspeak.de/index.php?members/bios.316/" target="_blank">@BIOS</a> using <a href="http://getbootstrap.com/" target="_blank">Bootstrap</a>.</p>
</footer>
<script language="JavaScript" type="text/javascript" src="gfx/js/wz_tooltip.js"></script>
</body>
</html>