<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.tworld.main.model.Main"%>
<%@page import="kr.co.tworld.main.model.News"%>
<%
	List mainList = (List)request.getAttribute("mainList");
	List newsList = (List)request.getAttribute("newsList");
	
	String[] newsSrc = new String[2];
	
	for(int i=0, len=newsList.size(); i<len; i++)
	{
		News news = (News)newsList.get(i);
		newsSrc[i] = news.getContents();
	}
	
%>
<!doctype html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8;" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta name="format-detection" content="telephone=no">
<meta id="viewport" name="viewport" content="user-scalable=yes, initial-scale=1.0, width=device-width">
<title>Home | T world</title>
<link rel="stylesheet" type="text/css" href="http://m2.tworld.co.kr/inc/css/new_layout.css" />
<link rel="stylesheet" type="text/css" href="http://m2.tworld.co.kr/inc/css/new_main.css">
<link rel="stylesheet" type="text/css" href="http://m2.tworld.co.kr/inc/css/mtworld.swipe.css">
<link rel="stylesheet" type="text/css" href="/inc/css/tworld_spinner.css" />

<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/common.js"></script>
<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/mytworld.js"></script>
<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/idangerous.swiper.js"></script>
<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/recommend/xtvid.js"></script>
<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/iscroll.js"></script>
<script type="text/javascript" src="http://m2.tworld.co.kr/inc/js/mtworld.swipe_banners.js"></script>
<script type="text/javascript">
		document.domain = "tworld.co.kr";
	</script>


<script>
function autoIframe(frameId)
{
	try{
		frame=document.getElementById(frameId);
		innerDoc=(frame.contentDocument) ? frame.contentDocument:frame.contentWindow.document;
		objToResize=(frame.style) ? frame.style : frame;
		objToResize.height=innerDoc.body.scrollHeight+40;
		objToResize.width=innerDoc.body.scrollWidth;
	}catch(err){
		window.status=err.message;
	}
}

function doResizeSearch() {
 var ParentFrame  = ifrmsearch.document.body;
 var ContentFrame = document.all["ifrmsearch"];
 ContentFrame.style.height = ParentFrame.scrollHeight + (ParentFrame.offsetHeight - ParentFrame.clientHeight) +100;
}


var search_promotion = true;
var RcmdServer = "/jsp/search/suggest.jsp";
var RcmdServer_ff = "/jsp/search/suggest.jsp";
var Td_;
var Ip_;
var top_position_;
var left_position_;
var wi_int_;
var bak_="",old_="" ;
var table_width_;
var ke;

function setDefaultAutoComplete_ (objTextBox, valTopPosition, valLeftPosition, valTimeout) {
	Ip_ = objTextBox;
	table_width_ = 200;
	wi_int_ = valTimeout;
	bak_=old_=Ip_.value;
}

 var g_ie5_=0;
 function get_nav_() {
	var ver=navigator.appVersion ;
	 if (navigator.appName.indexOf("Microsoft")!=-1 && ver.indexOf("MSIE 4")==-1 && ver.indexOf("MSIE 3")==-1) {
		if (ver.indexOf("MSIE 5.0")!=-1)
			g_ie5_=1;
		return 1;
	 } else if (navigator.appName.indexOf("Netscape")!=-1) { 
	    return 2; 
	 } else { 
	 	return 2; 
	 }
 }

 function chk_rt_(t_) {
		try {
			Td_=document;
		} catch (e) {
			return 0;
		}
		return 1;
 }
 var t_=get_nav_();
 var c_=chk_rt_(t_);
 var m_on_=0,m_now_=0,s_now_=0,shl_=0,a_now_=0,a_on_=0,arr_on_=0,frm_on_=0 ;
 var cn_use_="use_ac" ;
 var B_="block",I_="inline",N_="none",UD_="undefined" ;
 var qs_ac_list_="",qs_ac_id_="",qs_q_="",qs_m_=0,qs_ac_len_=0, qs_ac_cnt_list_ = "";
 var acuse_=1;
 var cc_= new Object() ;

 if ((t_==1||t_==2) && c_==1) {
	function wd_() {
		 var a = top_position_;
		 var b = left_position_;
		Ip_.onclick = req_ipc_ ;
		Ip_.onblur = dis_p_ ;
		Td_.onclick = dis_p_;
	}

	 var dnc_=0;
	 function req_ipc_() {
		dnc_=1;
		frm_on_=0;
		req_ac2_(1) ;
	 }

	 function dis_p_() {
		 if (dnc_) {
			 dnc_=0;
			return ;
		}
		if (arr_on_) {
			return ;
		}
		if (frm_on_) {
			return ;
		}
		alw=0 ;
		ac_hide_() ;
	 }

	 function req_ac2_(me) {
		 if (Ip_.value == "" || acuse_==0 ) return ;
		 if (a_on_ && dnc_) {
			ac_hide_() ;
			return ;
		}
		var o = get_cc_(me) ;
		 if (o && o[1][0] != "" ) ac_show_(o[0], o[1], o[2], me) ;
		 else reqAC_(me) ;
	 }

	 var _req_ = null;
	 
	 function get_req_()
		{
			if(window.ActiveXObject){
				try {
						return new ActiveXObject("Msxml2.XMLHTTP") ;
				} catch (e) {
					try {
						return new ActiveXObject("Microsoft.XMLHTTP") ;
					} catch (e2) {
						return null ;
		 			}
		 		}
			} else if(window.XMLHttpRequest){
				return new XMLHttpRequest() ;
			} else {
				return null ;
			}
		
		}
	 
	 function showAC_() {		 
			 try{
				 eval(_req_.responseText) ;
			 }catch(e){
				 var qs_q_=''; var qs_m_='1'; var qs_ac_id_='1'; var qs_ac_list_=new Array(''); 
			 }
			 set_cc_(qs_q_, qs_ac_list_, qs_m_) ;
			 ac_show_(qs_q_, qs_ac_list_, qs_ac_id_, qs_m_) ;
	 }
	 
	 function showResponse(oj) {		 
			 try{
				 eval(oj.responseText) ;
			 }catch(e){
				 var qs_q_=''; var qs_m_='1'; var qs_ac_id_='1'; var qs_ac_list_=new Array(''); 
			 }
			 set_cc_(qs_q_, qs_ac_list_, qs_m_) ;
			 ac_show_(qs_q_, qs_ac_list_, qs_ac_id_, qs_m_) ;
	 }
	 
	 function sendRequest(callback,url,data,method)
	 {
	 	var oj = get_req_();
	 	_req_=oj;
	 	if( oj == null ) return null;
	 	
	 	var ua = navigator.userAgent;
	 	var safari	= ua.indexOf("Safari")!=-1;
	 	var konqueror = ua.indexOf("Konqueror")!=-1;
	 	var opera	= ua.indexOf("Opera")!=-1;
	 	var mozes	 = ((a=navigator.userAgent.split("Gecko/")[1] )
	 			?a.split(" ")[0]:0) >= 20011128 ;
	 	
	 	if(window.opera || safari || mozes||opera){
	 		oj.onload = function () { callback(oj) };
	 	} else {	 	
	 		oj.onreadystatechange =function () 
	 		{
	 			if ( oj.readyState == 4 ){
	 				callback(oj);
	 			}
	 		}	 		
	 	}	
	 	
	 	/*
	 	 * IE�� �ƴҰ�� POST�� ����Ѵ�.
	 	 */
	 	if(window.opera || safari || mozes||opera){	 			
	 		method="POST";
			oj.open("POST",RcmdServer_ff);
			oj.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
			oj.send(data);
 		}	 	
	 	else
	 	{
	 		url = url +"?"+data;
	 		oj.open(method,url);
	 		oj.send(null);
	 	}	 	 	 	
	 }
	 
	 function reqAC_(me) {
		 var sv ;
		 var stripped = "";

		 ke=trim_space_(Ip_.value, me) ;
		 ke = ke.replace(/ /g, " ") ;
		 ke = ke.replace(/\\/g, "") ;
		 ke = ke.replace(/\'/g, "") ;
		 ke = ke.replace(/&/g, "") ;
		 ke = ke.replace(/|/g, "") ;
		 ke = ke.replace(/ or /g, "") ;
		 ke = ke.replace(/ and /g, "") ;
		 ke = ke.replace(/ OR /g, "") ;
		 ke = ke.replace(/ AND /g, "") ;
		 ke = ke.replace(/-/g, "") ;
		 ke = ke.replace(/ not /g, "") ;

		 if ((ke == "")||(ke == "or")||(ke == "and")||(ke=="not")) {
			 ac_hide_() ;
			 return ;
		 }
       var lastChar = ke.charAt (ke.length - 1);

       sv = RcmdServer + ke;
       ke="query="+ke;
       sendRequest(showResponse,RcmdServer,ke,"GET");
	 }

	 function ac_show_(aq, al, ai, am) {
		 if (aq && aq!="" && aq!=trim_space_(Ip_.value, am)) return ;
		 qs_q_ = aq ;
		 qs_m_ = am ;
		 qs_ac_list_ = al ;
		 qs_ac_id_ = ai ;
		 qs_ac_len_ = qs_ac_list_.length;
		 var h = (qs_ac_len_ > 9) ? 10 : qs_ac_len_ ;
		 h = h * 36;

		 print_ac_() ;

		 if (qs_ac_list_[0] == "" && (qs_m_==1 || qs_m_==2)) {
			 qs_ac_len_=1;
			 h=20;
			 if (qs_ac_list_[0] == "") h = h+20;
		 }
		 document.getElementById("scrol_").style.height = h;

		 if (qs_ac_len_) {
			 h+=41;
			 a_on_=1;
		 } else {
			 a_on_=0;
		 }
		 document.getElementById("ac_body_").width = 255;
		 document.getElementById("ac_body_").height = h ;

		 if (qs_ac_list_[0] != "")
		 	 document.getElementById("ac_body_").style.display = B_;

		 if (a_on_) {
			 set_acpos_(0);
			 document.getElementById("scrol_").scrollTop=0;
			 Ip_.onkeydown = ackhl_;
		 }
	 }

	 function set_acpos_(v) {
		a_now_ = v;
		setTimeout('set_ahl_();', 10);
	 }

	 function set_ahl_() {
		 if (!a_on_) return;
		 var o1, o2;
	
		 for (i=0;  i< qs_ac_len_ ; i++) {
			o1 = eval("document.getElementById('ac" + (i+1) + "_')");
			if(o1){
				if ((i+1) == a_now_) o1.style.backgroundColor = "#DDECCC";
				else o1.style.backgroundColor = "";
			}
		}
	 }

	 var max_row_=4;
	 function ackhl_() {
		 var e=window.event ;
		 var o1, o2 ;
		 if (e.keyCode==39) {
			 req_ac2_(1) ;
		 }
		 if (e.keyCode==40 || (e.keyCode==9 && !e.shiftKey)) {
			 if (m_on_) return ;
			 if (!a_on_) {
				 req_ac2_(1) ;
				 return ;
			}
			if (a_now_ < qs_ac_len_ && document.getElementById("ac1_")) {
				if (a_now_ == 0) bak_ = Ip_.value ;
				a_now_++ ;
				if (a_now_ > max_row_) document.getElementById("scrol_").scrollTop = parseInt((a_now_-1)/max_row_)*max_row_*20 ;
				 o1 = eval('ac' + a_now_ + '_') ;
				 o2 = eval('acq' + a_now_ + '_') ;
				 old_ = Ip_.value = o2.outerText ;
				 Ip_.focus() ;
				 set_ahl_() ;
				 e.returnValue = false;
			 }
		 }
		 if (a_on_ && (e.keyCode==38 || (e.keyCode==9 && e.shiftKey))) {
			 if (!a_on_) return ;
			 if (a_now_ <= 1) {
				 ac_hide_() ;
				 old_ = Ip_.value = bak_ ;
			 }
			 else {
				 a_now_-- ;
				 if ((qs_ac_len_-a_now_)+1 > max_row_) document.getElementById("scrol_").scrollTop = (qs_ac_len_-(parseInt((qs_ac_len_-a_now_)/max_row_)+1)*4)*20 ;
				 o1 = eval('ac'+ a_now_ + '_') ;
				 o2 = eval('acq' + a_now_ + '_') ;
				 old_ = Ip_.value = o2.outerText ;
				 Ip_.focus() ;
				 set_ahl_() ;
				 e.returnValue = false ;
			 }
		 }
	 }

	 function print_ac_() {
	 
	 	 if(document.getElementById('iq'))
	 	 	document.getElementById('iq').innerHTML='';
	 	
		 if (qs_ac_list_[0] == "") {
			 document.getElementById("scrol_").innerHTML = "";
			 ac_hide_();
		 }
		 else {
			 document.getElementById("scrol_").innerHTML = get_aclist_() ;
			 document.getElementById("ac_body_").style.display = B_ ;
			 
		 }
		 
		 setTimeout('set_ahl_();', 30) ;
		 
		 
	 }

	 function get_aclist_() {
		 var d="",ds="",l=0,s="" ;
		 var dscnt = 0;
		 if (qs_ac_list_[0] != "") {
			 for (i=0; i<qs_ac_len_; i++) {
				 ds = d = qs_ac_list_[i];
				 l = js_strlen_(d);
				 if (l > 40) ds = js_substring_(d, 0, 40) + "..." ;
         			 ds = js_highlight(ds, qs_q_, qs_q_, 0); 
       			   			
					 s += "<li (i =\"=\"" + (qs_ac_len_-1) + "))=\"\" ?=\"\" class=\"last_list\" :=\"\" \"\"=\"\" id='ac" + (i+1) + "_'  onmouseover=\"javascript:set_acpos_('" + (i+1) + "');\" style=\"\" onmouseout=\"set_acpos_(0); \" onclick=\"set_acinput_('" + d + "')\" >" ;
					 s += "<a href=\"javascript:get_re_search2();set_acinput_('" + d + "');\">" + ds +"</a>";
					 s += "</li>" ;
					 s += "<span id='acq" + (i+1) + "_' style='display:none; width:0px; height:0px;'>" + d + "</span>" ;

								 
			 }
		 }
		 return s ;
	 }


	function js_highlight(s, d, eq, is_suf) { 
		var ret=""; 
		if (!is_suf) { 
			ret=js_makehigh_pre(s, d); 
			if (ret=="") ret=js_makehigh_pre(s, eq); 
		} else { 
			 ret=js_makehigh_suf(s, d); 
			 if (ret=="") ret=js_makehigh_suf(s, eq); 
		} 
		 if (ret=="") return s; else return ret; 
	} 

	function js_makehigh_pre_bak(s, t) { 
			var d=""; 
			var s1=s.replace(/ /g, ""); 
			var t1=t.replace(/ /g, ""); 
			t1=t1.toLowerCase(); 
			if (t1==s1.substring(0, t1.length)) { 
				d=" <em>"; 
				for (var i=0,j=0; j<t1.length; i++) { 
					if (s.substring(i, i+1)!=" ") j++; 
						d+=s.substring(i, i+1); 
				} 
				d+="</em>"+s.substring(i, s.length); 
			 } return d; 
		} 
		
	function js_makehigh_pre(s, t) { 
		var d="";
		var s1=s.replace(/ /g, "");
		var t1=t.replace(/ /g, "");
		var t2=t.replace(/ /g, "");
		var temp = "";
		var len = 0;
		var k1=0, s_offset=0;	// �߰����� ��ġ
		
		s1 = s1.toLowerCase();  // ��ҹ��� ����
		t1=t1.toLowerCase();
		t2 = t2.toUpperCase();
		
		// �˻�� ��Ī�Ǵ� ������ ã�ƺ���. ������ t1�� �ѱ۷� ��ȯ�Ͽ� �ٽ� ã�ƺ���.
        k1 = s1.indexOf(t1);
		if (k1 < 0) {
			t1 = toKorean(t1);
        	k1 = s1.indexOf(t1);
		}

		// �׷��� ��ã���� �׳� ����
		if (k1 < 0) {
			return s;
		}

        while (k1 > 0 && k1 < s1.length) {
            for (var i=0, j=0; j < k1; i++) {
                if (s.substring(i, i+1) != " ") j++;
            }

            // ��Ī�� �κ��� �ٷ� �ձ��ڰ� �����̸�...
            // �պκ��� d �� �����ϰ�, ��Ī�� ���� ���ĸ� s1�� �����ϰ� ����������.
            if (s.substring(i, i+1) == ' ') {
                s_offset=i+1;
                d = s.substring(0, s_offset);
                s1 = s1.substring(k1, s1.length);
                break;
            }

            // ��Ī�� �� ���ڰ� ������ �ƴϸ�... �� �κп��� �� ã�ƺ���.
            else {
                s1_offset = k1 + t1.length + 1;
                k1 = s1_offset + s1.substring(s1_offset, s1.length).indexOf(t1);
            }
        }

		d+="<font color='red'>";
		for (var i=s_offset, j=0; j < t1.length; i++) {
			if (s.substring(i, i+1)!=" ") j++;
			d+=s.substring(i, i+1);
		}
		d+="</font>"+s.substring(i, s.length);

		return d;
	} 

		function js_makehigh_suf(s, t) { 
		var d=""; 
		var s1=s.replace(/ /g, ""); 
		var t1=t.replace(/ /g, ""); 
		t1=t1.toLowerCase(); 
		if (t1==s1.substring(s1.length-t1.length)) { 
			for (var i=0,j=0; j<s1.length-t1.length; i++) { 
				if (s.substring(i, i+1)!=" ") j++; 
				d+=s.substring(i, i+1); } 

				d+="<span class=\"red_bold_12\">"; 
					for (var k=i,l=0; l<t1.length; k++) { 
						if (s.substring(k, k+1)!=" ") l++; 
						d+=s.substring(k, k+1); } d+="</span>"; 
					} return d; 
		} 
		
	var en_h = "rRseEfaqQtTdwWczxvg";   

 	var reg_h = "[" + en_h + "]";   

 	var en_b = {   
	 	k:0,o:1,i:2,O:3,j:4,p:5,u:6,P:7,h:8,hk:9,ho:10,hl:11,y:12,n:13,nj:14,np:15,nl:16,b:17,m:18,ml:19,l:20   
 	}   

 	var reg_b = "hk|ho|hl|nj|np|nl|ml|k|o|i|O|j|p|u|P|h|y|n|b|m|l";   

 	var en_f = {   
	 	"":0,r:1,R:2,rt:3,s:4,sw:5,sg:6,e:7,f:8,fr:9,fa:10,fq:11,ft:12,fx:13,fv:14,fg:15,a:16,q:17,qt:18,t:19,T:20,d:21,w:22,c:23,z:24,x:25,v:26,g:27   
 	}   

 	var reg_f = "rt|sw|sg|fr|fa|fq|ft|fx|fv|fg|qt|r|R|s|e|f|a|q|t|T|d|w|c|z|x|v|g|";   

 	var reg_exp = new RegExp("("+reg_h+")("+reg_b+")((?:"+reg_f+")(?=(?:"+reg_h+")(?:"+reg_b+"))|(?:"+reg_f+"))","g");   

	 function toKorean(str) {   
	
		 return str.replace(reg_exp,replace);   
	
	 }   

	 function replace(str,h,b,f) {   
	
		 return String.fromCharCode(en_h.indexOf(h)*21*28 + en_b[b]*28 + en_f[f] + 44032);   
	
	 } 
	 
	function set_acinput_(v) {
			 if (!a_on_) return ;
			 old_ = Ip_.value = v ;
			 Ip_.focus() ;
			 ac_hide_() ;
		 }
		

	 function get_ac0_() {
		 var s="",ment="" ;
		 if (qs_m_==1) ment="�ش� �ܾ�� �����ϴ� �ܾ �����ϴ�.";
		 else if (qs_m_==2) ment="�ش� �ܾ�� ������ �ܾ �����ϴ�.";
		 s += "<table style='width:100%;' border=0 cellspacing=0 cellpadding=0>" ;
		 s += "<tr id=ac1_ onmouseover=\"set_acpos_(1); \" onmouseout=\"set_acpos_(0); \" style=\"backgroundColor=''\">" ;
		 s += "<td height=18 align=left  valign='top'>��<font color=#000000>" + ment + "</td></tr>" ;
		 s += "</table>" ;
		 s += "<span id=acq1_ style='display:none'>" + old_ + "</span>" ;

		 return s ;
	 }

	 function js_strlen_(s) {
		 var i,l=0;
		 for (i=0; i<s.length; i++)
			 if (s.charCodeAt(i) > 127) l+=2;
			 else l++;
		 return l;
	 }

	 function js_substring_(s, start, len) {
		 var i,l=0;d="" ;
		 for (i=start; i<s.length && l<len; i++) {
			 if (s.charCodeAt(i) > 127) l+=2 ;
			 else l++ ;
			 d+=s.substr(i, 1) ;
		 }
		 return d ;
	 }

	function trim_space_(ke, me) {
		if (me!=2) {
			ke = ke.replace(/^ +/g, "") ;
			ke = ke.replace(/ +$/g, " ") ;
		} else {
			ke = ke.replace(/^ +/g, " ") ;
			ke = ke.replace(/ +$/g, "") ;
		}
		ke = ke.replace(/ +$/g, " ") ;
		return ke ;
	 }

	 function get_cc_(me) {
		 var ke=trim_space_(Ip_.value, me) + me ;
		 return typeof(cc_[ke])==UD_ ? null : cc_[ke] ;
	 }

	 function set_cc_(aq,al,ai,me) {
		 cc_[aq+me] = new Array(aq, al, ai) ;
	 }

	 function ac_hide_() {
		if (document.getElementById("ac_body_").style.display == N_) return ;
		document.getElementById("ac_body_").style.display = N_ ;
		a_on_ = a_now_ = 0 ;
	}

	 function wi_() {
		 if (acuse_==0) return ;
		 if (m_on_) {
			 setTimeout("wi_()", wi_int_) ;
			return ;
		}
		var now = Ip_.value ;
		 if (now == "" && now != old_) ac_hide_() ;
		if (now != "" && now != old_ && keystatus_!=1) {
			var o=null, me=1 ;
			o = get_cc_(me) ;
			if (o && o[1][0] != "") ac_show_(o[0], o[1], o[2], me) ;
			else reqAC_(me) ;
		}
		old_ = now ;
		setTimeout("wi_()", wi_int_) ;
	 }

	 function set_mouseon_(f) {
		 if (f==1) arr_on_ = 1 ;
		 else if (f==2) frm_on_ = 1 ;
	 }

	 function set_mouseoff_(f) {
		 if (f==1) arr_on_ = 0 ;
		 else if (f==2) frm_on_ = 0 ;
	 }

	 function req_pf_() {
		 frm_on_=1;
		 req_ac2_(1);
		 Ip_.focus();
		 cursor_end_();
	 }

	 function req_sf_() {
		 frm_on_=1;
		 req_ac2_(2);
		 Ip_.focus();
		 cursor_end_();
	 }

	 function cursor_end_() {
		 if (t_==1 && c_==1) {
			 var rng=Ip_.createTextRange();
			 if (rng!=null) {
				 rng.move("textedit");
				 rng.select();
			 }
		 }
	 }
 }

var keystatus_ = 1;

function setTextBox_(evt) {

  var textbox = Ip_;
  var _event;
  switch ( getNavigatorType_() ) {
          case 1 : // IE
                  _event = window.event;
                  nodeName = _event.srcElement.nodeName;
                  break;
          case 2 : // Netscape
                  _event = evt;
                  nodeName = _event.target.nodeName;
                  break;
          default :
                  nodeName = "None";
                  break;
  }
  key = _event.keyCode;
  if ( keystatus_ == 1 && key != 13) {
          keystatus_ = 2;
  }
}

function getNavigatorType_() {
  if ( navigator.appName == "Microsoft Internet Explorer" )
          return 1;
  else if ( navigator.appName == "Netscape" )
          return 2;
  else
          return 0;
}

function search_promo_off() {

	search_promotion = false;

}

function get_re_search2 () {

	var f = document.search;
	var	q = f.query;
	if(check_query_spword(q.value) == -1){
		q.value="";
		q.focus();
		return;
	}

	f.submit();

}

function check_query_spword(search_word){
	var fm = document.search;
	 var index, len;

	 while(true) {
		   index = search_word.indexOf(" ");
		   // ������ ������ �����մϴ�.
		   if (index == -1) break;
		   // ���ڿ� ���̸� ���մϴ�.
		   len = search_word.length;
		   // ������ �߶���ϴ�.
		   search_word = search_word.substring(0, index) + search_word.substring((index+1),len);
	  }

	if(search_word == "")
	{
		alert("   �Էµ� �˻�� �����ϴ�.\n�˻�� �Է��Ͻñ� �ٶ��ϴ�.");
		return -1;
	}
	/*else if(search_word.length <= 1)
	{
		alert("2�� ���� �˻������մϴ�.");
		return -1;
	}*/
	else
	{
		//�ѱ��� 2Byte , ������ 1Byte
		for (var i = 0; i < search_word.length; i++)
		{
			ret = search_word.charCodeAt(i);

			if ((ret > 64 && ret < 91 ) || (ret > 96 && ret < 123 ) || (ret > 47 && ret < 58 ))
			{
				//������,���ڰ� üũ
			}
			else
			{
				if (ret < 0xAC00 || ret > 0xD7A3)
				{
					if ( ret == 37 || ret == 34 || ret == 60 || ret == 62 || ret == 38 || ret == 39  || ret == 43 || ret == 45 )  // %, ", < , >, +, -
					// if ( ret == 37 || ret == 34 || ret == 60 || ret == 62 || ret == 38 || ret == 39  || ret == 43 ) // %, ", < , >, +
					{
						alert("�ش� Ư�����ڴ� �Է��ϽǼ� �����ϴ�.");
						return -1;
					}
				}
			}
		}
	}

	return 0;
}

</script>


<script type="text/javascript">	
	// os ���� 
	var MobileUA = ( function () {
		var ua = navigator.userAgent.toLowerCase();
		var mua = {
			IOS: /ipod|iphone|ipad/.test(ua),                                //iOS
			IPHONE: /iphone/.test(ua),                                        //iPhone
			IPAD: /ipad/.test(ua),                                            //iPad
			ANDROID: /android/.test(ua),                                    //Android Device
			WINDOWS: /windows/.test(ua),                                    //Windows Device
			TOUCH_DEVICE: ('ontouchstart' in window) || /touch/.test(ua),    //Touch Device
			MOBILE: /mobile/.test(ua),                                        //Mobile Device (iPad)
			ANDROID_TABLET: false,                                            //Android Tablet
			WINDOWS_TABLET: false,                                            //Windows Tablet
			TABLET: false,                                                    //Tablet (iPad, Android, Windows)
			SMART_PHONE: false                                                //Smart Phone (iPhone, Android)
		};
		
		mua.ANDROID_TABLET = mua.ANDROID && !mua.MOBILE;
		mua.WINDOWS_TABLET = mua.WINDOWS && /tablet/.test(ua);
		mua.TABLET = mua.IPAD || mua.ANDROID_TABLET || mua.WINDOWS_TABLET;
		mua.SMART_PHONE = mua.MOBILE && !mua.TABLET;
		return mua;
	
	}());
	
	var ta001 = false; 
	var ta002 = false; 
	var ta003 = false; 
	var ta004 = false; 
	var ta005 = false; 
	var ta006 = false; 
	var ta000 = false;
	
	
	var osTypeS ="";
	
	
	function checkConfirmDate(type, totalTime){
		var returnValue = toapp.checkConfirmDate(type ,totalTime+"");
		return returnValue;
	}
	
	function golink2(link, billyn, inout){
				
		if( "Y" == billyn ){
			if(confirm("3G/LTE�� ��� �� ������ ����� �߻��˴ϴ�.")){				
				if (MobileUA.IOS){   // OS üũ
					if(inout == "OUT") { location.href = "toapp:webbrowserouter:" + link; }
					else { alert('�α��� �� �̿� �����մϴ�.'); }
				}else{
					if(inout == "OUT") { toapp.webbrowserouter(link); }
					else { alert('�α��� �� �̿� �����մϴ�.'); }
				}
			}
		}else{
			if (MobileUA.IOS) {   // OS üũ
				if(inout == "OUT") { location.href = "toapp:webbrowserouter:" + link; }
				else { alert('�α��� �� �̿� �����մϴ�.'); }
			}else{
				if(inout == "OUT") { toapp.webbrowserouter(link); }
				else { alert('�α��� �� �̿� �����մϴ�.'); }
			}
		}
	}	
	
	
	function doSearch() {
		var fm = document.search;
		
		if(fm.query.value == ""){
			fm.query.value = '';			
		}
		
		var re_query = fm.query.value;
		
		re_query = encodeURIComponent(re_query);
		var re_query2 = re_query.replace(/%EB%88%9D/gi,"%2345597");
		var re_query3 = decodeURIComponent(re_query2);
		fm.query.value = re_query3;
		
		fm.submit();
			
	}
		
	function freeSms(){//���� ���Ṯ�� ���
		location.href= "/normal.do?serviceId=SDUMMY0001&viewId=V_CENT0002&mainMenu=Y";
	}
			
	function HideTBanner(){
		if (MobileUA.IOS) {   // OS üũ
			if(localStorage.getItem("com.skt.prod.tbanner") != 20170324){
					$('.benner_talert').css('display','block');
			}
		}else {
			var closeTbannerTime = toapp.checkConfirmDate("com.skt.prod.tbanner","1000000");//����ð� > (�÷��ù�� ���� �ð� + totalTime) --> Y
			if(closeTbannerTime == "Y"){
				$('.benner_talert').css('display','block');	
			}
		}	
	}
	var osTypeS ="";
	$(document).ready(function(){		
			if("A" =="A"){ 
				osTypeS ="and";
			}else{
				osTypeS ="ios";
			}		
			//���� menu��ư
			$('.main_menu ul li').on({
				'touchstart' : function () {
					$(this).addClass('on');
					$(this).find('>a>img').attr('src',$(this).find('>a>img').attr('src').replace('_off.png', '_on.png'));
					$(this).siblings().each(function(){
						$(this).find('>a>img').attr('src',$(this).find('>a>img').attr('src').replace('_on.png','_off.png'));
						$(this).removeClass('on');
					})
				},
				// 2016-01-15 [s] ����
				'touchend' : function () {
					$(this).removeClass('on');
					$(this).find('>a>img').attr('src',$(this).find('>a>img').attr('src').replace('_on.png','_off.png'));
				},
				'touchcancel' : function () {
					$(this).removeClass('on');
					$(this).find('>a>img').attr('src',$(this).find('>a>img').attr('src').replace('_on.png','_off.png'));
				}
				// 2016-01-15 [e] ����
			});
			
			//t�˸����
			/* 2016-02-18 �߰�_01 [s] �� ���ټ� */
			$('.benner_talert .tal_c').click(function(){
				$('.benner_talert').hide(200, function(){
					$(".all_menu_btn").focus()					
				});
			});
			/* 2016-02-18 �߰�_01 [s] �� ���ټ� */
			
			/* 2016-05-10 �߰�_01 [s] */
			Banners.getBannerData();
			/* 2016-05-10 �߰�_01 [e] */
				
			/**shindh
			 * ����޴� ��ũ Call
			 * @param url link �ּ�
			 * @param ��ȸ���α��� ������ "Y: �α��� , N:�α��κҰ�"
			 */

			$.goURL = function(url,nonmember_yn){
			
				if( 'Z'=='Z' && nonmember_yn=='N' ){
					var go_login;
					go_login = confirm("���̵�/��й�ȣ �α��� �� �̿� �����մϴ�.\n�α��� �Ϸ� ���ðڽ��ϱ�?");
					if(go_login == true){
						location.href="toapp:login";
					}

				}else{
				location.href = url;
				}
			}
			//�÷��� ��� �ݱ� ó��
			FloatingBannerDim = {
				show : function(){
					var isFBannerDimShow = "Y";
					if(MobileUA.ANDROID){
						isFBannerDimShow = checkConfirmDate("com.skt.prod.fTappsBannerDim", "1000000"); //�ι�° �Ķ���ʹ� �������� �ҷ��� ���� �ؾ� �մϴ�.
					} else if(MobileUA.IOS){
						if ( document.cookie.indexOf("fTappsBannerDim=done") < 0 ) {
							isFBannerDimShow = "Y";
			    		} else {
			    			isFBannerDimShow = "N";
			    		}
					}
					if(isFBannerDimShow == "Y"){
						offeringMain();
						FloatingBannerDim.init();
					} else {
						FloatingBannerDim.close();
					}
				},
				init : function(){
					$(".floating_banner_dim .floating_close").click(function(){
						offeringStatic_cd = "MA_"+osTypeS+"_close_fc"; //�ݱ��ư ����
						callCSScript('', '', offeringStatic_cd , '', '');
						FloatingBannerDim.setCookieClose();
					});
				},
				
				setCookieClose : function(){
					if(MobileUA.ANDROID){
						location.href = "toapp.settingpackageconfirmdate:com.skt.prod.fTappsBannerDim"; //�Ϸ絿�� ���� �ð�.
					} else if(MobileUA.IOS){
						FloatingBannerDim.setCookie( "fTappsBannerDim", "done" , 1 );
					}
					FloatingBannerDim.close();
				},
				
				close : function(){
					$(".floating_banner_dim").hide();
					/* 2017-03-03 �߰�_01 [s] */
					$("#main_header h1 img").focus();
					/* 2017-03-03 �߰�_01 [e] */
				},
				
				setCookie : function( name, value, expiredays ) {
					var todayDate = new Date();   
				    todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);  
				    if ( todayDate > new Date() ) {  
				    	expiredays = expiredays - 1;  
				    }  
				    todayDate.setDate( todayDate.getDate() + expiredays );   
				    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
				}
			}
			if( "" == "Y" ){ 
				FloatingBannerDim.show();
			}
			
		});		
		
		/*�÷��� ��� start*/
		function offeringMain(){
			var offeringStatic_cd="";
			
			offeringStatic_cd ="MA_"+osTypeS+"_go_fv"; 
			callCSScript('', '', offeringStatic_cd , '', '');
			if(">" == "TA001"){ //Ű������� 
				ta001 = true; 
			}
			
			if("TA002" == "TA002"){ //A
				ta002 = true;
				ta000 = true;
			}
			if("TA002" == "TA003"){ //B
				ta003 = true;
				ta000 = true;
			}
			if("TA002" == "TA004"){ //C
				ta004 = true;
				ta000 = true;
			}
			if("TA002" == "TA005"){ //D 
				ta005 = true; 
				ta000 = true; 
			}
			if("TA002" == "TA006"){ //��Ÿ  
				ta006 = true; 
				ta000 = true; 
			}
					
			if(ta001 && ta000){ //Ű������� +Upsell Type 
				$(".floating_banner_dim").find(".floating_txt_wrapper").append("<p class=\"floating_txt\" role=\"txt\">���������� <strong><em class=\"fcYel\">2</em>��</strong> �߰��Ǿ����ϴ�!</p>"); 
			}else{
				if(ta001){
					$(".floating_banner_dim").find(".floating_txt_wrapper").append("<p class=\"floating_txt\" role=\"txt\">1������ �ȵǴ� �Ǽ� �ܸ� ����</p>"); 
				}else if(ta002 || ta003 || ta004 || ta005 || ta006){
					$(".floating_banner_dim").find(".floating_txt_wrapper").append("<p class=\"floating_txt\" role=\"txt\">������ �� �´� ����� ��õ</p>"); 
				}
			}
			
			var rpHtml ="";
			if(ta001){
				offeringStatic_cd ="MA_"+osTypeS+"_kidp_bc";  
				rpHtml+="<li>";
				rpHtml+="<a href=\"javascript:goBanner('m.shop.tworld.co.kr/handler/Plan-List?PLAN_ID=P00000186', 'N', 'OUT', '"+offeringStatic_cd+"')\" class=\"sub_floating_icon\" ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Ű�������\">";
				rpHtml+="<img src=\"http://m2.tworld.co.krhttp://m2.tworld.co.kr/img/new_main/kidsPhone.png\"  ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Ű�������\" alt=\"�ϸ����̸��ǼӴܸ��� üũī��ʸ���ĳ������� �츮���� ù����Ʈ���常�ϼ��� ��â����\">";
				rpHtml+="</a>";
				rpHtml+="</li>";
				$(".sub_floating_list > ul").append(rpHtml);
			}
			rpHtml ="";
			if(ta002){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_A_bc"; 
				rpHtml+="<li>";
				rpHtml+="<a href=\"javascript:goBanner('m2.tworld.co.kr/normal.do?serviceId=S_BILL0106&viewId=V_CENT1036&domainVer=m2&PMAIN=Y', 'N', 'IN', '"+offeringStatic_cd+"')\" class=\"sub_floating_icon\" ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type A\">"; 
				rpHtml+="<img src=\"http://m2.tworld.co.krhttp://m2.tworld.co.kr/img/new_main/DSC01.png\"  ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type A\" alt=\"������ ������ ������, ��� ��ź�� �ηư�. ������ ���� ������� ��õ�� �帳�ϴ�.\">";
				rpHtml+="</a>";
				rpHtml+="</li>";
				$(".sub_floating_list > ul").append(rpHtml);
			}
			rpHtml ="";
			if(ta003){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_B_bc";
				rpHtml+="<li>";
				rpHtml+="<a href=\"javascript:goBanner('m2.tworld.co.kr/normal.do?serviceId=S_BILL0106&viewId=V_CENT1036&domainVer=m2&PMAIN=Y', 'N', 'IN', '"+offeringStatic_cd+"')\" class=\"sub_floating_icon\" ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type B\">"; 
				rpHtml+="<img src=\"http://m2.tworld.co.krhttp://m2.tworld.co.kr/img/new_main/DSC02.png\"  ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type B\" alt=\"����/ģ������ ������ ������ �̾��ѵ�. ������ ���� ������� ��õ�� �帳�ϴ�.\">";
				rpHtml+="</a>";
				rpHtml+="</li>";
				$(".sub_floating_list > ul").append(rpHtml);
			}
			rpHtml ="";
			if(ta004){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_C_bc";
				rpHtml+="<li>";
				rpHtml+="<a href=\"javascript:goBanner('m2.tworld.co.kr/normal.do?serviceId=S_BILL0106&viewId=V_CENT1036&domainVer=m2&PMAIN=Y', 'N', 'IN', '"+offeringStatic_cd+"')\" class=\"sub_floating_icon\" ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type C\">"; 
				rpHtml+="<img src=\"http://m2.tworld.co.krhttp://m2.tworld.co.kr/img/new_main/DSC03.png\"  ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type C\" alt=\"�� �ڲ� �ڵ��� ����� �� ������ �ž�? ������ ���� ������� ��õ�� �帳�ϴ�.\">";
				rpHtml+="</a>";
				rpHtml+="</li>";
				$(".sub_floating_list > ul").append(rpHtml);
			}
			rpHtml ="";
			if(ta005){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_D_bc";
				rpHtml+="<li>";
				rpHtml+="<a href=\"javascript:goBanner('m2.tworld.co.kr/normal.do?serviceId=S_BILL0106&viewId=V_CENT1036&domainVer=m2&PMAIN=Y', 'N', 'IN', '"+offeringStatic_cd+"')\" class=\"sub_floating_icon\" ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type D\">"; 
				rpHtml+="<img src=\"http://m2.tworld.co.krhttp://m2.tworld.co.kr/img/new_main/DSC04.png\"  ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type D\" alt=\"�ӵ����� ������ ���� ����Ͻ���? ������ ���� ������� ��õ�� �帳�ϴ�.\">";
				rpHtml+="</a>";
				rpHtml+="</li>";
				$(".sub_floating_list > ul").append(rpHtml);
			}
			rpHtml ="";
			if(ta006){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_E_bc";
				rpHtml+="<li>";
				rpHtml+="<a href=\"javascript:goBanner('m2.tworld.co.kr/normal.do?serviceId=S_BILL0106&viewId=V_CENT1036&domainVer=m2&PMAIN=Y', 'N', 'IN', '"+offeringStatic_cd+"')\" class=\"sub_floating_icon\" ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type E\">"; 
				rpHtml+="<img src=\"http://m2.tworld.co.krhttp://m2.tworld.co.kr/img/new_main/DSC05.png\"  ga:ca=\"MTA_main\" ga:ac=\"DSC�÷��ù��>DSC�޴�\" ga:la=\"Upsell Type E\" alt=\"������ ������ ���´� ������� ����? ������ ���� ������� ��õ�� �帳�ϴ�.\">";
				rpHtml+="</a>";
				rpHtml+="</li>";
				$(".sub_floating_list > ul").append(rpHtml);
			}
			$(".floating_banner_dim").show(); 
			/* 2017-03-03 ����_01 [s] */
			setTimeout(function(){
				$(".floating_txt_wrapper").animate({"width":250}, 500, function(){
					setTimeout(function(){
						//$(".floating_txt_wrapper").addClass('hide');
						$(".floating_txt_wrapper").animate({"width":0}, 500, function(){
							$(this).hide();
							/* 2017-03-02 �߰�_01 [s] */
							/* 2017-03-02 ����_01 [s] */
							if(!$(".floating_banner_dim").hasClass("on")){
								$("#floating_banner").addClass("ready");
							}
							/* 2017-03-02 ����_01 [e] */
							/* 2017-03-02 �߰�_01 [e] */
						});
					}, 3000)
				});
			}, 1000);
			/* 2017-03-03 ����_01 [e] */

			
			var sub_floating_list_height = ($(".sub_floating_list ul li:first-child .sub_floating_icon").height() + 10) * $(".sub_floating_list ul li .sub_floating_icon").length + 30;
			
			$(".floating_icon, .floating_txt_wrapper").click(flotingIconEvent);
			
		}
		
		
		var mg = 5;
		var speed = 300;
		function fnSubFloatingBannerShow(){
			/* 2017-03-02 �߰�_02 [s] */
			$("#floating_banner").removeClass("ready");
			/* 2017-03-02 �߰�_02 [e] */
			$(".floating_banner_dim").height($(window).height()).addClass("on");
			$(".sub_floating_list").show()
			var subItems = $(".sub_floating_list a");
			var h = $(".sub_floating_list li:first-child a").height();
			var len = subItems.length;
			for(var i=0; i<len; i++){
				var iTop = -1 * ((h + mg) * (len - i));
				/* 2017-03-03 ����_02 [s] */
				$(subItems[i]).show().animate({
					"top": iTop,
					"opacity": 1}, speed, function(){
						$(subItems[0]).focus();
					});
				/* 2017-03-03 ����_02 [e] */
			}
			$("body").css("overflow-y", "hidden");
		}
		var timeoutID = undefined;
			
		function fnSubFloatingBannerHide(){
			$(".floating_icon").unbind('click', flotingIconEvent);
			var subItems = $(".sub_floating_list a");
			var h = $(".sub_floating_list li:first-child a").height();
			var len = subItems.length;
			for(var i=0; i<len; i++){
				if(i< len - 1){
					$(subItems[i]).animate({"top": 0,"opacity": 0}, speed, function(){$(this).hide()});	
				} else {
					$(subItems[i]).animate({"top": 0,"opacity": 0}, speed, function(){
						$(this).hide();
						$("body").css("overflow-y", "auto");
						$(".sub_floating_list").hide();
						$(".floating_banner_dim").addClass("off");//.removeClass("on").height(0).removeClass("off");
							
						if(timeoutID == undefined){
							timeoutID = setTimeout(function(){
								$(".floating_banner_dim").removeClass("on").height(0).removeClass("off");
								$(".floating_icon").click(flotingIconEvent);
								timeoutID = undefined
								/* 2017-03-02 �߰�_03 [s] */
								$("#floating_banner").addClass("ready");
								/* 2017-03-02 �߰�_03 [e] */
								/* 2017-03-03 �߰�_02 [s] */
								$(".floating_icon .floating_show_icon").focus();
								/* 2017-03-03 �߰�_02 [e] */
								
							}, 300)	
						}
							
					});
				}
			}
		}
			
		function flotingIconEvent(){
			$(".floating_txt_wrapper").hide();
			event.stopPropagation();
			if($(".floating_icon").hasClass("on")){//�ݱ�
				offeringStatic_cd = "MA_"+osTypeS+"_close_bc"; //�ݱ�Ŭ��
				callCSScript('', '', offeringStatic_cd , '', ''); 
				//ga('send', 'event', 'MTA_main', 'DSC�÷��ù��' ,'�����');
				$(".floating_icon").removeClass("on");
				/* 2017-03-03 �߰�_03 [s] */
				$(".floating_icon.floating_show_icon").show();
				$(".floating_icon.floating_close_icon").hide();
				/* 2017-03-03 �߰�_03 [e] */
				$(".floating_close").show();
				fnSubFloatingBannerHide();
			} else {//�ٷΰ���Ŭ��
				goOfferingStatic_cd();
				$(".floating_icon").addClass("on");
				/* 2017-03-03 �߰�_04 [s] */
				$(".floating_icon.floating_show_icon").hide();
				$(".floating_icon.floating_close_icon").show();
				/* 2017-03-03 �߰�_04 [e] */
				$(".floating_close").hide();
				fnSubFloatingBannerShow();
				//ga('send', 'event', 'MTA_main', 'DSC�÷��ù��' ,'���̱�'); 
			}
		}
		
		function goOfferingStatic_cd(){   
			var offeringStatic_cd="";
			
			offeringStatic_cd = "MA_"+osTypeS+"_go_fc"; //�ٷΰ���Ŭ��
			callCSScript('', '', offeringStatic_cd , '', '');
			
			if(ta001){
				offeringStatic_cd ="MA_"+osTypeS+"_kidp_bv";  
				callCSScript('', '', offeringStatic_cd , '', '');
			}
			if(ta002){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_A_bv"; 
				callCSScript('', '', offeringStatic_cd , '', '');
			}
			if(ta003){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_B_bv";
				callCSScript('', '', offeringStatic_cd , '', '');
			}
			if(ta004){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_C_bv";
				callCSScript('', '', offeringStatic_cd , '', '');
			}
			if(ta005){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_D_bv";
				callCSScript('', '', offeringStatic_cd , '', ''); 
			}
			if(ta006){
				offeringStatic_cd ="MA_"+osTypeS+"_ups_E_bv";
				callCSScript('', '', offeringStatic_cd , '', '');
			}
		}
		

	var moveUrlSc = "";
	var stat_ViewXtvidCdSc = "";
	var stat_SelXtvidCdSc = "";
	
	var isOksusu_YN = 'N';
	var isTpay_YN = 'N';
	var isCake_YN = 'N';
	var isTphone_YN = 'N';
	
	$(document).ready(function(){
			//���ιٷΰ���
			gotop();
			//��谪 / URL Param(upCd) ����
			callStatXtvidCd();
			//��ʳ��⿩�� �Ǵ�
			if( isOksusu_YN=='Y' || isTpay_YN=='Y' || isCake_YN=='Y' || isTphone_YN=='Y' ){
				FloatingBanner.show();
			}
			
			if (MobileUA.IOS) {   // OS�� üũ�Ѵ�. (���¼ҽ� ���̼��� ������ IOS�� �����)
				$("#main_footer .floor_con .footbtn a:last-child").hide();
			}
			
	});

	function callStatXtvidCd() {
		
		if(true) isOksusu_YN='Y';
		if(true) isTpay_YN='Y';
		if(true) isCake_YN='Y';
		if(true && 'I' == 'I'){
			isTphone_YN='Y';
		}else if(true
	&& 'I' == 'A') {
			var tPhoneYn = toapp.packageInstall("com.skt.prod.dialer", "0"); // T��ȭ �� ��ġ ���� Ȯ�� (Y: ��ġ / N : �̼�ġ) //com.skt.prod.tphone //
			if (tPhoneYn == 'Y') {
				isTphone_YN = 'Y';
			}
		}

		/** 4�� ���� **/
		if (isOksusu_YN == 'Y' && isTpay_YN == 'Y' && isCake_YN == 'Y'
				&& isTphone_YN == 'Y') { // Oksusu + Tpay + Cake + Tphone
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tpay_tphone_oksusu_cake";
			stat_ViewXtvidCdSc = "m_tph_ck_tp_ok_fb ";
			stat_SelXtvidCdSc = "of_tph_ck_tp_ok_fb";
		}
		/** 3�� ���� **/
		else if (isOksusu_YN == 'Y' && isTpay_YN == 'Y' && isCake_YN == 'Y') { // Oksusu + Tpay + Cake
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&domainVer=m2&upCd=cake_tpay_oksusu";
			stat_ViewXtvidCdSc = "main_cake_ot_fbv";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'I' && isOksusu_YN == 'Y' && isTpay_YN == 'Y'
				&& isTphone_YN == 'Y') { // Oksusu + Tpay + Tphone (������)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=ios_tpay_tphone_oksusu";
			stat_ViewXtvidCdSc = "m_tph_ok_tp_ios_fb";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'A' && isOksusu_YN == 'Y' && isTpay_YN == 'Y'
				&& isTphone_YN == 'Y') { // Oksusu + Tpay + Tphone(�ȵ���̵�)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tpay_tphone_oksusu";
			stat_ViewXtvidCdSc = "m_tph_ok_tp_fb";
			stat_SelXtvidCdSc = "of_tph_ok_tp_fb";
		} else if (isOksusu_YN == 'Y' && isCake_YN == 'Y' && isTphone_YN == 'Y') { // Oksusu + Cake + Tphone
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tphone_oksusu_cake";
			stat_ViewXtvidCdSc = "m_tph_ok_ck_fb ";
			stat_SelXtvidCdSc = "of_tph_ok_ck_fb";
		} else if (isTpay_YN == 'Y' && isCake_YN == 'Y' && isTphone_YN == 'Y') { // Tpay + Cake + Tphone
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tpay_tphone_cake";
			stat_ViewXtvidCdSc = "m_tph_tp_ck_fb";
			stat_SelXtvidCdSc = "of_tph_tp_ck_fb";
		}
		/** 2�� ���� **/
		else if (isOksusu_YN == 'Y' && isTpay_YN == 'Y') { // Oksusu + Tpay
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=oksusu_tpay";
			stat_ViewXtvidCdSc = "main_oksusu_tpay_fbv";
			stat_SelXtvidCdSc = "main_oksusu_tpay_fbb";
		} else if (isOksusu_YN == 'Y' && isCake_YN == 'Y') { // Oksusu + Cake
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&domainVer=m2&upCd=cake_oksusu";
			stat_ViewXtvidCdSc = "main_cake_ok_fbv";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'I' && isOksusu_YN == 'Y' && isTphone_YN == 'Y') { // Oksusu + Tphone(������)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=ios_tphone_oksusu";
			stat_ViewXtvidCdSc = "m_tph_ok_ios_fb";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'A' && isOksusu_YN == 'Y' && isTphone_YN == 'Y') { // Oksusu + Tphone(�ȵ���̵�)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tphone_oksusu";
			stat_ViewXtvidCdSc = "m_tph_ok_fb";
			stat_SelXtvidCdSc = "of_tph_ok_fb";
		} else if (isTpay_YN == 'Y' && isCake_YN == 'Y') { //  Tpay + Cake
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&domainVer=m2&upCd=cake_tpay";
			stat_ViewXtvidCdSc = "main_cake_tp_fbv";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'I' && isTpay_YN == 'Y' && isTphone_YN == 'Y') { //  Tpay + Tphone(������)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=ios_tpay_tphone";
			stat_ViewXtvidCdSc = "m_tph_tp_ios_fb";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'A' && isTpay_YN == 'Y' && isTphone_YN == 'Y') { //  Tpay + Tphone(�ȵ���̵�)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tpay_tphone";
			stat_ViewXtvidCdSc = "m_tph_tp_fb";
			stat_SelXtvidCdSc = "of_tph_tp_fb";
		} else if (isCake_YN == 'Y' && isTphone_YN == 'Y') { //  Cake + Tphone
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tphone_cake";
			stat_ViewXtvidCdSc = "m_tph_ck_fb";
			stat_SelXtvidCdSc = "of_tph_ck_fb";
		}
		/** 1�� ����(�ܵ�) **/
		else if (isOksusu_YN == 'Y') { //Oksusu
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=oksusu";
			stat_ViewXtvidCdSc = "main_oksusu_fb_view";
			stat_SelXtvidCdSc = "main_oksusu_fb_btn";
		} else if (isTpay_YN == 'Y') { //Tpay
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&domainVer=m2&upCd=tpay";
			stat_ViewXtvidCdSc = "main_tpay_fb_view";
			stat_SelXtvidCdSc = "main_tpay_fb_btn";
		} else if (isCake_YN == 'Y') { //Cake
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&domainVer=m2&upCd=cake";
			stat_ViewXtvidCdSc = "main_cake_fb_view";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'I' && isTphone_YN == 'Y') { //Tphone(������)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=ios_tphone";
			stat_ViewXtvidCdSc = "m_tphone_ios_fb";
			stat_SelXtvidCdSc = "";
		} else if ('I' == 'A' && isTphone_YN == 'Y') { //Tphone(�ȵ���̵�)
			moveUrlSc = "/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=tphone";
			stat_ViewXtvidCdSc = "m_tphone_fb";
			stat_SelXtvidCdSc = "of_tphone_fb";
		}
	}

	function MoveUrl() {
		///if ( typeof callbackCSScript == 'function' ) {	callbackCSScript();	}	// ���� ó����
		location.href = moveUrlSc;
	}

	function callbackCSScript() {
		callCSScript('', '', stat_SelXtvidCdSc, '', '');
	}

	/*2016-05-03 �߰�_02 [s]  Floating Banner*//*�÷��� ��� �ݱ� ó�� */
	FloatingBanner = {
		show : function() {
			var isFBannerShow = "Y";
			if (MobileUA.ANDROID) {
				isFBannerShow = toapp.checkConfirmDate(
						"com.skt.prod.fTappsBanner", "1000000"); //�ι�° �Ķ���ʹ� �������� �ҷ��� ���� �ؾ� �մϴ�.
			} else if (MobileUA.IOS) {
				if (document.cookie.indexOf("fTappsBanner=done") < 0) {
					isFBannerShow = "Y";
				} else {
					isFBannerShow = "N";
				}
			}
			if (isFBannerShow == "Y") {
				callCSScript('', '', stat_ViewXtvidCdSc, '', '');
				$(".floatingBnnr").show();
				FloatingBanner.init();
			} else {
				FloatingBanner.close();
			}
		},
		init : function() {
			$(".floatingBnnr .todayExp").click(function() {
				FloatingBanner.setCookieClose();
			});
			$(".floatingBnnr .btnClose").click(function() {
				FloatingBanner.close();
			});
		},

		setCookieClose : function() {
			if (MobileUA.ANDROID) {
				location.href = "toapp.settingpackageconfirmdate:com.skt.prod.fTappsBanner"; //�Ϸ絿�� ���� �ð�.
			} else if (MobileUA.IOS) {
				FloatingBanner.setCookie("fTappsBanner", "done", 1);
			}
			FloatingBanner.close();
		},

		close : function() {
			$(".floatingBnnr").hide();
		},

		setCookie : function(name, value, expiredays) {
			var todayDate = new Date();
			todayDate = new Date(
					parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
			if (todayDate > new Date()) {
				expiredays = expiredays - 1;
			}
			todayDate.setDate(todayDate.getDate() + expiredays);
			document.cookie = name + "=" + escape(value) + "; path=/; expires="
					+ todayDate.toGMTString() + ";"
		}
	}

	/*2016-05-03 �߰�_02 [e]*/

	function tLifeBannerGotoLink() {

		if (confirm("3G/LTE�� ��� �� ������ ����� �߻��˴ϴ�.")) {
			var currentDate = new Date();
			var currentDay = currentDate.getDay();
			var goXtvidCd = "";

			var link = "tpay.sktelecom.com/web/down";

			if (currentDay > 0 && currentDay < 6) {
				goXtvidCd = "MANB_005";
			} else {
				goXtvidCd = "MANB_006";
			}

			callCSScript('', '', goXtvidCd, '', '');

			if ("I" == "I") { // OS üũ
				location.href = "toapp:webbrowserouter:" + link;

			} else {
				toapp.webbrowserouter(link);

			}
		}
	}
</script>
</head>

<body id="main" onload="checkMOTPAccess(); HideTBanner(); setMDN();">

	<!-- 2017-03-03 �߰�_01 [s] -->
	<!-- ���ټ� ���� -->
	<div class="floating_banner_dim" style="display: none">
		<div class="floating_banner_wrapper" id="floating_banner">
			<div class="floating_icon floating_show_icon">
				<img src="http://m2.tworld.co.kr/img/new_main/btn_floating_offer.png" alt="��õ����" tabindex=0>
			</div>
			<div class="floating_close">
				<img src="http://m2.tworld.co.kr/img/new_main/floating_close.png" alt="�ݱ�">
			</div>
			<div class="floating_txt_wrapper"></div>
			<div class="sub_floating_list">
				<ul>
				</ul>
			</div>
			<div class="floating_icon floating_close_icon">
				<img src="http://m2.tworld.co.kr/img/new_main/btn_floating_offer_close.png" alt="��õ����ݱ�">
			</div>
		</div>
	</div>
	<!-- 2017-03-03 �߰�_01 [e] -->
	<!-- ���ټ� ���� -->

	<header id="main_header">

		<h1>
			<img src="http://m2.tworld.co.kr/img/new_main/h1_logo.png" alt="mobile T world" width="30" tabindex="1" />
		</h1>

		<div class="m_search">
			<form id="search" name="search" action="/jsp/search/search.jsp?domainVer=m2" method="POST">
				<input type="text" name="query" id="query" title="�˻���" autocomplete="off" placeholder="" value="" onkeypress="if(event.keyCode == 13) { doSearch(); return false;}" />
			</form>
			<button id="b_search" class="main_search ico_comm">�˻�</button>

			<div class="search_auto_text" id="ac_body_" onmouseover="set_mouseon_(2);" onmouseout="set_mouseoff_(2);" style="display: block;">
				<ul id="scrol_">
				</ul>
			</div>

		</div>


		<!-- �˻��� �ڵ� �ϼ� script -->
		<script language="JavaScript" type="text/JavaScript">
			function getBrws() {
				var ua = navigator.userAgent;
				var safari = ua.indexOf("Safari") != -1;
				var opera = ua.indexOf("Opera") != -1;
				var konqueror = ua.indexOf("Konqueror") != -1;
				var mozes = ((a = navigator.userAgent.split("Gecko/")[1]) ? a
						.split(" ")[0] : 0) >= 20011128;

				if (window.opera || safari || mozes || opera)
					return "NI";
				else
					return "IE";
			}

			var query_obj = document.getElementById("query");

			if (getBrws() == "IE")
				setDefaultAutoComplete_(query_obj, 30, 383, 10);
			else
				setDefaultAutoComplete_(query_obj, 30, 273, 10);

			document.onmousedown = setTextBox_;
			document.onkeydown = setTextBox_;

			if ((t_ == 1 || t_ == 2) && c_ == 1) {
				wd_();
				setTimeout("wi_ ()", wi_int_);
			}
			ac_body_id = document.getElementById("ac_body_");
			ac_body_id.style.display = "none";
		</script>

		<button id="all_menu" class="all_menu_btn ico_comm">��ü�޴�����</button>

	</header>



	<div class="benner_talert" style="display: none;">
		<span class="tal_b ico_comm"></span> <a href=""><img src="" /></a>
		<button id="closeTA" class="tal_c ico_comm">�ݱ�</button>
	</div>

	<!-- 2016-04-29 �߰�_01 [s] -->
	<div class="floatingBnnr" style="display: none">
		<div class="floatingWrap">
			<!-- <a href="javascript:MoveUrl('/normal.do?serviceId=SDUMMY0001&viewId=V_PROD1000&upCd=oksusu', callbackCSScript());"><img src="http://m2.tworld.co.kr/img/new_main/main_floating_bnnr01.png" alt="����Ȯ��"></a> -->
			<a class="floatingImg" href="javascript:MoveUrl();"> <img src="/img/new_main/main_floating_bnr02.png" alt="����Ȯ��">
			</a> <a href="javascript:;" onclick="" class="todayExp"> <!-- <span class="irwa">���� �Ϸ� �ݱ�</span> -->
			</a>
		</div>
		<button type="button" class="btnClose">�ݱ�</button>
	</div>
	<!-- 2016-04-29 �߰�_01 [e] -->

	<section>

		<!-- main_content -->
		<div id="main_content">

			<!-- personal_info -->
			<div id="personal_info">

				<span> <span class='strong'>��*��</span>

					<button id="b_sms" class="ico_comm" onclick="javascript:freeSms()">���Ṯ��</button>
				</span>
				<span>010 - 1111 - 2222</span>
				<span id="p_Charge"></span>
			</div>
			<div class="main_sub">
				<!-- �����ī�� / �ܿ��⺻��ȭ / �ǽð����-->

				
				<style>
#meb_sub_con { padding:6px 0 0 !important; }
.n_login {display:none}
</style> 
		<!-- main_tab -->
		<div class="main_tab">
			<ul>
				<li id="mem_sector">
					<!-- 2016-04-04 �߰�_01 [s] --><!-- ���� ����� �ű� UI -->
					<a href="#none" class="menu_button" id="meb1">�����</a>
					<div class="tab_con" style='display:block;'>
							<a href="#none"  id="zoom" class="mem_con" title="����� ���ڵ� Ȯ���ϱ�">
								<div class="left">
									<span class="txt_desc">�ܿ� �����ѵ�</span>
									<span class="money_desc" id="meb_sub_limit"></span>
									<ul class="user_box">
										<li>��� <strong id="meb_sub_gr"></strong></li>
										<li>ī�� <strong id="meb_sub_type"></strong></li>
									</ul>
								</div>
								<div class="right">
									<div class="barcode" id="meb_sub_con" style="background-color:black"></div>
										<span class="num" id="meb_sub_num"></span>
								</div>
								<button class="mag_btn ico_comm" id="zoom" title="����� ���ڵ� Ȯ���ϱ�">Ȯ���ϱ�</button>
							</a>
							<div class="n_login"></div>
						</div>
					<!-- 2016-04-04 �߰�_01 [e] --><!-- ���� ����� �ű� UI -->
				</li>
				
				<li id="rem_sector">
					<a href="#none" class="menu_button on" title="���� ��" id="meb2">�ܿ��⺻��ȭ</a>
					<div class="tab_con" style='display:block;'>
						
						<div id="rem_con" class="rem_con">
							<iframe src="" frameborder="0"  id="remIframe" width="100%"  scrolling="no"></iframe>  
							<button class="mag_btn ico_comm" style="display:none" onClick="$.goURL('/normal.do?serviceId=S_BILL0070&viewId=V_CENT0261&domainVer=m2&menuId=2,2&mainMenu=Y');" title="�ܿ��⺻��ȭ �ٷΰ���">�ٷΰ���</button>
						</div>
						<div class="n_login"></div>
					</div>
				</li>
				<li id="time_sector">
					<a href="#none" class="menu_button" id="meb3">�ǽð� ���</a>
					<div class="tab_con">
						<a href="/normal.do?serviceId=S_BILL0025&viewId=V_CENT0119&domainVer=m2&menuId=2,1&mainMenu=Y" class="time_con" id="time_con" title="�ǽð� ��� �ٷΰ���">
							<p class="year" id="searchTermDate"></p>
							<p class="charge">����Ͻ� ����� <strong><span class="one" id="totOpenBal2"></span><span class="two">��</span></strong>�Դϴ�.</p>
							<button class="mag_btn ico_comm" onClick="$.goURL('/normal.do?serviceId=S_BILL0025&viewId=V_CENT0119&domainVer=m2&menuId=2,1&mainMenu=Y')" title="�ǽð� ��� �ٷΰ���">�ٷΰ���</button>
						</a>
						<div class="n_login"></div>
					</div>
				</li>
			</ul>
		</div>
		<!-- //main_tab -->
	
	<script type="text/javascript" src="/inc/js/jquery-barcode.js"></script>	
	<script type="text/javascript">	
			
			
			var MobileUA = ( function () {
			var ua = navigator.userAgent.toLowerCase();
			var mua = {
				IOS: /ipod|iphone|ipad/.test(ua),                                //iOS
				IPHONE: /iphone/.test(ua),                                        //iPhone
				IPAD: /ipad/.test(ua),                                            //iPad
				ANDROID: /android/.test(ua),                                    //Android Device
				WINDOWS: /windows/.test(ua),                                    //Windows Device
				TOUCH_DEVICE: ('ontouchstart' in window) || /touch/.test(ua),    //Touch Device
				MOBILE: /mobile/.test(ua),                                        //Mobile Device (iPad)
				ANDROID_TABLET: false,                                            //Android Tablet
				WINDOWS_TABLET: false,                                            //Windows Tablet
				TABLET: false,                                                    //Tablet (iPad, Android, Windows)
				SMART_PHONE: false                                                //Smart Phone (iPhone, Android)
			};
			
			mua.ANDROID_TABLET = mua.ANDROID && !mua.MOBILE;
			mua.WINDOWS_TABLET = mua.WINDOWS && /tablet/.test(ua);
			mua.TABLET = mua.IPAD || mua.ANDROID_TABLET || mua.WINDOWS_TABLET;
			mua.SMART_PHONE = mua.MOBILE && !mua.TABLET;
			return mua;
		
		}());
	
			var EVENT_TYPE_01 = 1;//����� ī��
		    var EVENT_TYPE_02 = 2;//�ܿ��⺻��ȭ
		    var EVENT_TYPE_03 = 3;//�ǽð� ���
		    var EVENT_TYPE_04 = 4;//�ǽð� ��� 2��°
		    
		    var ONE_PASS_CALL = true;
		    
		    var MESSAGE_TYPE_01 = "��ø� ��ٷ� �ּ���.<br/>����� ī�� ������ ��ȸ�ϴ� ���Դϴ�.";  
		    var MESSAGE_TYPE_02 = "��ø� ��ٷ� �ּ���.<br/>�ܿ��⺻ ��ȭ ������ ��ȸ�ϴ� ���Դϴ�.";  
		    var MESSAGE_TYPE_03 = "��ø� ��ٷ� �ּ���.<br/>�ǽð� ��� ������ ��ȸ�ϴ� ���Դϴ�.";  
		    var MESSAGE_DONE_USE ="������ SK�ڷ��� ���� ȸ���� <br/> ����Ͻ� �� �̿��Ͻ� �� �ֽ��ϴ�.";
		    var MESSAGE_HASNT_CARD ="�߱޵� ����� ī�尡 �����ϴ�.<div class='n_btn'><a href='/normal.do?serviceId=S_MBRS0075&viewId=V_MBRS0050' class='btn2' title='����� ī�� ��û �ٷΰ���'>����� ī�� ��û</a></div>";
			var MSG_LOAD_TYPE_01 = "��ø� ��ٷ� �ּ���.<br>������� ��ȸ�ϴ� ���Դϴ�.";
			var MSG_LOAD_TYPE_02 = "��ø� ��ٷ� �ּ���.<br>�ܿ��⺻��ȭ�� ��ȸ�ϴ� ���Դϴ�.";
			var MSG_LOAD_TYPE_03 = "��ø� ��ٷ� �ּ���.<br>�ǽð� ����� ��ȸ�ϴ� ���Դϴ�.";
			var MSG_LOGIN_TYPE_01 = "���� �α��� �Ͻø�<br> <strong>�����</strong>�� �ٷ� ��ȸ�Ͻ� �� �ֽ��ϴ�. <div class='n_btn'><a href='#none'>�α���</a><a href='#none' class='aos_btn'>����α���</a><a href='#none'>ȸ������</a></div>";
			var MSG_LOGIN_TYPE_02 = "���� �α��� �Ͻø�<br> <strong>�ܿ��⺻��ȭ</strong>�� �ٷ� ��ȸ�Ͻ� �� �ֽ��ϴ�. <div class='n_btn'><a href='#none'>�α���</a><a href='#none' class='aos_btn'>����α���</a><a href='#none'>ȸ������</a></div>";
			var MSG_LOGIN_TYPE_03 = "���� �α��� �Ͻø�<br> <strong>�ǽð� ���</strong>�� �ٷ� ��ȸ�Ͻ� �� �ֽ��ϴ�. <div class='n_btn'><a href='#none'>�α���</a><a href='#none' class='aos_btn'>����α���</a><a href='#none'>ȸ������</a></div>";
			var MSG_REGIST = "������ SK�ڷ��� ���� ȸ����<br>����Ͻ� �� �̿��Ͻ� �� �ֽ��ϴ�. <div class='n_btn'><a href='http://m2.tworld.co.kr/normal.do?serviceId=SDUMMY0002&viewId=V_MEMB1002&domainVer=m2&menuId=1,1' class='btn2' title='���� ȸ�� ��� �ٷΰ���'>���� ȸ�� ���</a></div>";
			var MSG_FARE = "��ݰ���� �Ϸ���� �ʾ����� ��� �� ��ȸ�ϼ���.";		    
			
		    //�ǽð� ��� Event�� ����ڰ� ��� �ݺ���û�� ����
		    //��û�� ������ ���������� Event�߻��� ������
		    var requested  = false; 
		    var param = '&APP_VER=&OS_TYPE=';
		    var loginPage = '/jsp/common/loginout/view/app_login_alert.jsp';
		  
		    var requestType = null;
		   /**
		    * barcode �Ӽ�����
		    */
		    var settings = {
	          output     :"css",
	          bgColor    : "#FFFFFF",
	          color      : "#000000",
	          barWidth   : 1,
	          barHeight  : 50,
	          moduleSize : 2,
	          posX       : 50,
	          posY       : 20,
	          addQuietZone: 1
	        };
        
           /**
		     * ������ [+] �̹��� ���� 
		     * false : ����
		     * true  : ���̱�
		     */
		    $.fnHideMore = function(view){
		     	var $moreDiv = $('.main_tab > ul > li');
		     	if(!view){
		     		$moreDiv.find('.mag_btn').css('display','none');
		     	}else {
		     		//alert($moreDiv.find('.mag_btn').length);
		     		$moreDiv.find('.mag_btn').css('display','block');
		     	}
		    }
			
	        var barcode;
        	/**
			 * �����ī�� ��û 
			 * skt_init.jsp -> skt_card_num_json.jsp
			 * ���� CallBack Method
			 */
		    function processingComplete(xml)
			{
				barcode  = $(xml).find("mbrs").find("info").find("ebc_num").text();
				dataCode = $(xml).find("dataCode").text();
				memberType = $(xml).find("mbrs").find("info").find("membershipTypeNm").text();
				memberGr = $(xml).find("mbrs").find("info").find("membershipGrNm").text();
				memberLimit = $(xml).find("mbrs").find("info").find("membershipRemLimit").text();
				/**
			   	  * - ��ȸ���н�  �޼��� ���
			   	  * - ��������� �α��� �������� �̵�ó�� 
			   	  */
			   	if( sign(xml, EVENT_TYPE_01)){
				 	return true;
				}
				
				if( dataCode != 0 ){
					dataMessage = $(xml).find("dataMessage").text();
					if( dataCode == 9004 ){
						dataMessage = MESSAGE_HASNT_CARD
						
					}
					toggleMsg(EVENT_TYPE_01, MSG_LOAD_TYPE_01, 'N');
					toggleMsg(EVENT_TYPE_01, dataMessage, 'Y');
					return true;
				}
				
		 		toggleMsg(EVENT_TYPE_01, MSG_LOAD_TYPE_01, 'N');
			    $("#meb_sub_con").barcode({code:barcode, crc:false}, "int25",settings);
			    $("#meb_sub_num").text(numberFormat(barcode));
			    $("#meb_sub_type").text(memberType);
			    $("#meb_sub_gr").text(memberGr);
			    $("#meb_sub_limit").text(memberLimit);
			}
			
			//4�ڸ����� ������ �־��ش�.
			function numberFormat(num){
				var pattern = /(-?[0-9]+)([0-9]{4})/;
				while(pattern.test(num)){
					num = String(num).replace(pattern,"$1 $2");
				}
				return num;
			}
		    
		    function commCalled(MESSAGE_TYPE, callType){
		   		ONE_PASS_CALL = false;
		    	removeMessage(true);
		    	
				switch(callType){
				case EVENT_TYPE_01 : //����� ī��
					toggleMsg(callType, MSG_LOAD_TYPE_01, 'Y');
					break;
				case EVENT_TYPE_02 : //�ܿ��⺻��ȭ
					toggleMsg(callType, MSG_LOAD_TYPE_02, 'Y');
					break;
				case EVENT_TYPE_03 : //�ǽð� ���
					toggleMsg(callType, MSG_LOAD_TYPE_03, 'Y');
					break;
				}		    	
		    }
		    
		    /**
			 * �����ī�� ��û 
			 * Event ��û�� Native App(ONEPASS)���� Ȩȭ���� ó�� �����Ҷ� ȣ���Ѵ�.
			 * skt_init.jsp -> skt_card_num_json.jsp
			 * ������  CallBackó���� ��û��
			 **/
		    function fnMemberShipCard(){
		    	commCalled(MESSAGE_TYPE_01, EVENT_TYPE_01);
		    	$('#meb1').click();
		    }
		    
		    /*
		     *1. �ܿ��⺻��ȭ event
		     *   Event ��û�� Native App(ONEPASS)���� ȣ������
		     */
		    function fnBaseCall(){
		  	   commCalled(MESSAGE_TYPE_02, EVENT_TYPE_02);
		  	   $('#meb2').click();
			}
				
			//�ǽð� ��� event
			//Event ��û�� Native App(ONEPASS)���� ȣ������
			function fnRealTimeChage(){
		  	   commCalled(MESSAGE_TYPE_03, EVENT_TYPE_03);
			   $('#meb3').click();
		    }
		    
		    //���������� �����ϰ� ����
			//$(document).ready(function(){
				/* 2017-03-07 �߰�_02 [s] */
				 DelayAlert = {
					 checkCookie : function(){
							var isPopupShow = "Y";
							if("A" =="A"){ 
								isPopupShow = toapp.checkConfirmDate("com.skt.prod.delayAlert","86400000"); //�ι�° �Ķ���ʹ� �������� �ҷ��� ���� �ؾ� �մϴ�.
								if(isPopupShow == "Y"){
									return true
								} else {
									return false
								}
							} else if("A" =="I"){
								if (document.cookie.indexOf("delayAlert=done") < 0) {
									return true
					    		} else {
					    			return false
					    		}
							}
							
						},
						show : function(target){
							if(DelayAlert.checkCookie()){
								$(".delayAlertWrap").show();
								$(".delayAlertWrap div a").unbind('click').bind('click', function(){
									if($("#id_expire").attr("checked") == 'checked'){
										DelayAlert.setCookieClose()
									 } else {
										DelayAlert.close()
									 }
								})
							}
						},
					    close : function(){
					    	$(".delayAlertWrap").hide();
					    },
						setCookieClose : function(){
							if(MobileUA.ANDROID){
								location.href = "toapp.settingpackageconfirmdate:com.skt.prod.delayAlert"; //�Ϸ絿�� ���� �ð�.
							} else if(MobileUA.IOS){
								var now = new Date();
								var expDate = new Date();
								var todayDate = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 0, 0, 0)
								expDate.setDate(todayDate.getDate() + 1); 
								document.cookie = "delayAlert=done; path=/; expires=" + expDate.toGMTString() + ";"
							}
							DelayAlert.close();
						}, 
				 }
				 /* 2017-03-07 �߰�_02 [e] */
				
					
				/* 2017-03-07 �߰�_01 [s] */
				DelayAlert.show()
				/* 2017-03-07 �߰�_01 [e] */
				
				/**
				 * ���ڵ� ������ ���
				 */
				$('#zoom').click(function(){	
					if(barcode == '' || barcode == null ){
						return true;
					}
					location.href="toapp:memberbarcode:"+barcode;
					return;
				});
				
	   
			    /**
			     * �����ī��,�ܿ��⺻��ȭ,�ǽð����
			     * Tab Event ó��
			     */
			    $.fnTabBar = function(type){	

					$('.main_tab > ul > li > .menu_button').on('click', function(){
					
						var nameId = $(this).text();
						//��ȸ���ϰ�� �����ī�� event ����ó����
						if( 'Z'=='Z' && "�����" == nameId){
							return true;
						}					
					
						$(this).addClass('on').attr("title","���� ��").next('.tab_con').show().parent().siblings().find('.menu_button').removeClass('on').attr("title","").next('.tab_con').hide();
					})				    	
			    	
			    	if( "2" == type ){ //��ȸ���� ���
						toggleMsg(EVENT_TYPE_02, MSG_REGIST, 'Y');			    	
			    	
			    		$('#main_tab > ul > li').click(function(){	
							$.goURL(loginPage,'Y');
							return false;
						});
														
						$('#meb1').bind('click', function(){
							toggleMsg(EVENT_TYPE_01, MSG_REGIST, 'Y');
					    });						
						$('#meb2').bind('click', function(){
							toggleMsg(EVENT_TYPE_02, MSG_REGIST, 'Y');
					    });						
						$('#meb3').bind('click', function(){
							toggleMsg(EVENT_TYPE_03, MSG_REGIST, 'Y');
					    });						
						
					}			    									    
			    }
				
				$.fnTabBar("3");
	
				/**
				 * �����ī�� ��û 
				 * skt_init.jsp -> skt_card_num_json.jsp
				 * ������  CallBackó���� ��û��
				 */
				$('#meb1').bind('click', function(){
					if( 'Z'=='Z'){
						alert('���̵�/��й�ȣ �α��� �� �̿� �����մϴ�.');
						return false;
					}
				
					toggleMsg(EVENT_TYPE_01, MSG_LOAD_TYPE_01, 'Y');
					var serverURL = '/normal.do?viewId=V_MBRS0038&serviceId=S_MBRS0077';
					
					requestTaskAjax(EVENT_TYPE_01,serverURL,null);
					removeMessage(true);
			    });
			
				//�ܿ��⺻��ȭ event
				$("#meb2").bind("click", function() {
				   removeMessage(true);
			   	   toggleMsg(EVENT_TYPE_02, MSG_LOAD_TYPE_02, 'Y');
			   	   $("#remIframe").attr("src","http://www.naver.com");     
				});
				
				//�ǽð� ��� event
				$("#meb3").bind("click", function() {
				  
			   	   $.fnHideMore(false);
				   toggleMsg(EVENT_TYPE_03, MSG_LOAD_TYPE_03, 'Y');
				   
				   if(requested){
			   		  return true;
			   	   }
			   	   requested = true;    
		   		   //�ǽð� ���
		   		   var serverURL = '/normal.do?viewId=V_CENT1125&serviceId=S_BILL1025'+param;
			   	   requestTaskAjax(EVENT_TYPE_03,serverURL,null);
			   	   removeMessage(true);
				});
				 
				$.fnHideMore(false);
				
	       		var w_height =  $(window).height() + 41 ;
				$('#swipe_t').css('height',w_height);
	  
	   //}); // ready
		
	 	
	   
	   var timeOut;
	   //�ǽð� ���Ⱓ
	   var searchTermDate ="";
	   /**
	    * Ajax request method
	    *
	    * @param callType Event Task
	    * @param serverURL ajax ȣ�� URL
	    * @param sub menu click id
	    */
	    function requestTaskAjax(callType,serverURL,id){
	    	//�ð�����
	    	 requestType = callType;
		 	 $.ajax({
					  type    : 'get'
					, async   : true
					, dataType: 'xml'
					, contentType: "text/xml;charset=utf-8"
					, headers : { "cache-control": "no-cache" }
					, cache   : false
					, url     : serverURL
					, success : function(xml) {
					
						if( callType== EVENT_TYPE_03){
							
					   	    var resultCode =  $(xml).find("resultCode").text();
							/**
						   	  * - ��ȸ���н�  �޼��� ���
						   	  * - ��������� �α��� �������� �̵�ó�� 
						   	  */
							if( resultCode != '0'  ){
							
								 clearTimeout(timeOut);
								 requested = false;
								 if( sign(xml, callType)){
								 	return true;
								 }
				   	    	}
				   	    	
							serverURL = '/normal.do?viewId=V_CENT1126&serviceId=S_BILL1126'+param;
						   	searchTermDate = $(xml).find("searchTermDate").text();
							timeOut = setTimeout("requestTaskAjax("+EVENT_TYPE_04+",'"+serverURL+"',null)",4000);
							return true;
						}
						
					
						switch(callType){
						case EVENT_TYPE_01 : //����� ī��
							$.fnHideMore(true);
							processingComplete(xml);
							break;
						case EVENT_TYPE_04 : //�ǽð� ��� ����ó����
							clearTimeout(timeOut);
						    realTimeCharge(xml);
						    $.fnHideMore(true);
							break;

						break;
						}
						
					}
					, error: function(x, e) {
						removeMessage(true);
						x.abort(); 
					    //�ǽð� ��� event lock����
						requested = false;
						var msg = "��ȸ�� ��Ȱ���� �ʽ��ϴ�. <br>��� �� �ٽ� �õ��� �ּ���." ;
					    //�ε� �޼��� ���â�ݱ�
					    toggleMsg(callType, msg, 'Y');
						console.log("ERROR response ................");
						console.log(e);
						console.log("ERROR response ................");
					    return;
					}
				});
	    }	
		
		/**
	   	  * - ��ȸ���н�  �޼��� ���
	   	  * - ��������� �α��� �������� �̵�ó�� 
	   	  * - ������ ȸ�� �޼��� ���
	   	  */
		function sign(xml, callType){
			 var resultCode =  $(xml).find("resultCode").text();
			 console.log(" sign resultCode =["+resultCode+"]");
		 	 if(resultCode != 0){
		 	 
		   	  	 if(resultCode == 999){
		   	  	 	$.goURL(loginPage,'Y');
		   	  	 	return true;
		   	  	 }
		   	  	 
		   	  	 //������ ȸ�� �޼��� ó��
		   	  	 var resultMessage = $(xml).find("resultMessage").text();
		   	  	 if(resultCode == 'A998'){
		   	  	 	resultMessage = MESSAGE_DONE_USE;
		   	  	 }
		   	  	 
				//�����ī�� �̹߱�
		   	  	 if( resultCode == 9004 ){
					resultMessage = MESSAGE_HASNT_CARD
				}
				
				//�ܿ��⺻��ȭ
				if(callType == EVENT_TYPE_02){
					resultMessage += "<div class='n_btn'><a href='/normal.do?serviceId=S_BILL0070&viewId=V_CENT0261&domainVer=m2&menuId=2,2&mainMenu=Y' class='btn2' title='�ڼ��� ���� �ٷΰ���'>�ڼ��� ����</a></div>";
				}
				
		   	  	toggleMsg(callType, resultMessage, 'Y');
		   	  	 
		   	  	 return true;
	   	  	}
	   	  	return false;
		}
	  
	   
	    //�ǽð� ��� ���䰪 ó����
	   function realTimeCharge(xml){
	   
	   	  if(sign(xml, EVENT_TYPE_03)){
	   	  	return true;
	   	  }
		  
	      var totOpenBal2 = $(xml).find("totOpenBal2").text();
	      if( totOpenBal2 == null){
	      	totOpenBal2 == ''
	      }
	      $("#searchTermDate").html(searchTermDate);
		  $("#totOpenBal2").html(totOpenBal2);
		  
		  setTimeout(function(){
		  	/**
			 * �ε� �޼��� ���â�ݱ�
			 */
			toggleMsg(EVENT_TYPE_03, MSG_LOAD_TYPE_03, 'N');
		  	requested = false;
		  },500);
		  
	   }
	   
	   /** 
	    * �ܿ��⺻��ȭ UI�ʱ�ȭ 
	    */
	   function removeMessage(result){
	   
	      $("#v_msg").remove();
	      $("#sms_msg").remove();
	      $("#d_msg").remove();
	      
	   	  if(result){
		      $("#v_con").show();
		      $("#s_con").show();
		      $("#d_con").show();
	      }
	   }

	/**
	 * ȭ�鿡�� �޽����� �����ְų� �����Ѵ�.
	 */
	function toggleMsg(sector, msg, isView){
	alert();
	return;
	
		var contentElement;
		var msgElement;
		
		switch(sector){
			case EVENT_TYPE_01 : //����� ī��
				contentElement = $('.mem_con');
				msgElement = $('#mem_sector > div.tab_con > .n_login');	
				break;
				
			case EVENT_TYPE_02 : //�ܿ��⺻��ȭ
				contentElement = $('.rem_con');
				msgElement = $('#rem_sector > div.tab_con > .n_login');		
				break;					

			case EVENT_TYPE_03 : //�ǽð����
				contentElement = $('.time_con');
				msgElement = $('#time_sector > div.tab_con > .n_login');		
				break;		
		}
		
		if(isView == 'Y'){
			var editMsg = "<div class='table_b'><p class='txt'>" + msg + "</p></div>";
			if(msg.indexOf("<div class='n_btn'>") > 0){
				editMsg = "<div class='table_b pa'><p class='txt'>" + msg + "</p></div>";
			}
			msgElement.html(editMsg);
			msgElement.css('display','block');
			contentElement.css('display','none');
			
		}else{
			msgElement.css('display','none');
			contentElement.css('display','block');
		}	
	}
	
	//one pass call�ϰ�� ���� ����.
	if(ONE_PASS_CALL){
   
		if("Y" == "Y" || "Y" == "Y"){
			//�����
			toggleMsg(EVENT_TYPE_01, MSG_LOAD_TYPE_01, 'Y');
			var serverURL = '/normal.do?viewId=V_MBRS0020&serviceId=S_MBRS0068';
			requestTaskAjax(EVENT_TYPE_01,serverURL,null);
			removeMessage(true);	 		
		} else {
			//�ܿ��⺻ ��ȭ
				var resultMap =getFreeCookis("freeBillData");	
			   	toggleMsg(EVENT_TYPE_02, MSG_LOAD_TYPE_02, 'Y');
			   	$("#remIframe").attr("src","http://www.naver.com");
		}	 

	}		
	
	function freeBillCookis( name, value ) {
		console.log ("setCookis");
		document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + 20*60 + ";" 
	}
	
	function getFreeCookis(name){
		 name = name + '=';
		 var cookieData = document.cookie;
		 var start = cookieData.indexOf(name); 
		 var cValue ="";
		 if(start != -1){
		 	start += name.length;
		 	var end =cookieData.indexOf(';', start);
		 	if(end == -1) end = cookieData.length;
		 	cValue = cookieData.substring(start,end);
		 }
		 console.log ("getCookis"+unescape(cValue));
		 return unescape(cValue);
	}
	
 	
    </script>
		
		
				
				
				
			</div>

			<!-- �� ��� -->
			<!-- 2016-12-28 �߰�_01 [s] -->
			<div class="banner_line_banner"></div>
			<!-- 2016-12-28 �߰�_01 [e] -->
			<!-- �� ��� -->

			<div class="main_menu">
				<ul>
					<li><a href="javascript:$.goURL('/tweb/joininfo/join_info.html?allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu01_off.png" alt="my T"></a></li>
					<li><a href="javascript:$.goURL('/tweb/main/sub_charge.html?allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu02_off.png" alt="�����ȸ/����"></a></li>
					<li><a href="javascript:$.goURL('/tweb/main/sub_gift_refill.html?allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu03_off.png" alt="����/����/����"></a></li>
					<li><a href="javascript:$.goURL('/tweb/main/sub_product.html?allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu04_off.png" alt="�����/T Apps/�ΰ�����"></a></li>
					<li><a href="javascript:$.goURL('/tweb/main/sub_membership.html?allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu05_off.png" alt="�����"></a></li>
					<li><a href="javascript:$.goURL('/tweb/main/sub_roaming.html?allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu06_off.png" alt="T�ι�"></a></li>
					<li><a href="javascript:$.goURL('/normal.do?serviceId=SDUMMY0001&viewId=V_MAIN0006&allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu07_off.png" alt="���þȳ�"></a></li>
					<li><a href="javascript:$.goURL('/normal.do?serviceId=SDUMMY0001&viewId=V_CENT1100&allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu08_off.png" alt="�̿�ȳ�"></a></li>
					<li><a href="javascript:$.goURL('/wire.do?viewId=V_WIRE0000&serviceId=S_MAIN0001&allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/main_menu09_off.png" alt="���ͳ�/��ȭ/TV"></a></li>
					<li><a href="javascript:$.goURL('/normal.do?serviceId=SDUMMY0001&viewId=V_CENT4007&allMenu=Y&mainMenu=Y&domainVer=m2');"><img src="http://m2.tworld.co.kr/img/new_main/menu_tDirect_off.png" alt="T ���̷�Ʈ, �޴��� ���� ���, 1��1 ��ȭ������� �޴����� ������ �����ϰ� �����ϼ���."></a></li>
				</ul>
			</div>
			<!-- //main_menu -->

			<!-- 2016-05-10 �߰�_03 [s] -->
			<div id="swiper_banner" class="swiper-container">
				<div id="swiper_banners" class="swiper-wrapper"></div>
				<div class="swiper-guide-wrapper">
					<button class="swiper-button-prev">
						<span class="ico_comm">���� ��ʺ���</span>
					</button>
					<div class="swiper-pagination">
						<ul></ul>
						<button class="bplay_btn ">����̹��� �Ͻ�����</button>
					</div>
					<button class="swiper-button-next">
						<span class="ico_comm">���� ��ʺ���</span>
					</button>
				</div>
			</div>
			<!-- 2016-05-10 �߰�_03 [e] -->

			<!-- 2016-01-04 [s] ���� -->
			<!-- h_and_n_box -->
			<div class="h_and_n_box">
				<h2 class="mtlth2">
					Hot & New <span class="txt">���� ���ϰ� ���ο� ����</span>
				</h2>
				<div class="bt_box">
					<div class="left">
						<p class="l_box" id="hotNew_l"><img src="<%= newsSrc[0] %>" /></p>
					</div>
					<div class="right">
						<p class="r_box" id="hotNew_r"><img src="<%= newsSrc[1] %>" /></p>
					</div>
				</div>
			</div>
			<!-- //h_and_n_box -->
			<!-- t_direct_box -->
			<div class="t_direct_box">
				<!-- 2017-03-23 TWD �����Ķ���� �߰� [S] -->
				<!--<h2 class="mtlth2"><a href="javascript:goBanner('m.shop.tworld.co.kr/handler/Mobile-MobileMain?category_id=20010001', 'N', 'OUT', 'main_twd_d');" title="��â"><img src="http://m2.tworld.co.kr/img/new_main/tlt_t_direct.png" width="99" alt="T world Direct"> <span class="txt">�ű԰���/��� ���� ���� �¶��� ���θ�<span class="ico_comm"></span></span></a></h2>-->
				<h2 class="mtlth2">
					<a href="javascript:goBanner('m.shop.tworld.co.kr/handler/Mobile-MobileMain?category_id=20010001&utm_source=tworldapp&utm_medium=referral&utm_campaign=home_motwd&utm_content=mobtwdhome&fSiteCd=1010', 'N', 'OUT', 'main_twd_d');" title="��â"><img src="http://m2.tworld.co.kr/img/new_main/tlt_t_direct.png" width="99" alt="T world Direct"> <span class="txt">�ű԰���/��� ���� ���� �¶��� ���θ�<span class="ico_comm"></span>
					</span></a>
				</h2>
				<!-- 2017-03-23 TWD �����Ķ���� �߰� [E] -->
				<div class="img_box">
					<div class="left">
						<p id="tdirect_l" class="l_box"></p>
					</div>
					<div class="right">
						<p id="tdirect_r" class="r_box"></p>
					</div>
				</div>
			</div>
			<!-- //t_direct_box -->
			<!-- situation_box -->
			<!-- 2015-12-18 [s] ���� -->
			<div class="situation_box">
				<h2 class="mtlth2">
					<a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0121&viewId=V_CMIS1090&domainVer=m2&PMAIN=7" title="�̷��� �̷��� �ϼ��� �ٷΰ���">��Ȳ�� ��ó�� <span class="txt">�̷��� �̷��� �ϼ���<span class="ico_comm"></span>
					</span></a>
				</h2>
				<ul class="like_this_type">
					<li id="banner"><a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0122&viewId=V_CMIS1091&cntsId=222&mainMenu=Y" title="111">111</a></li>
					<li id="banner"><a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0122&viewId=V_CMIS1091&cntsId=222&mainMenu=Y" title="222">222</a></li>
					<li id="banner"><a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0122&viewId=V_CMIS1091&cntsId=222&mainMenu=Y" title="333">333</a></li>
					<li id="banner"><a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0122&viewId=V_CMIS1091&cntsId=222&mainMenu=Y" title="444">444</a></li>
				</ul>
			</div>
			<!-- 2015-12-18 [e] ���� -->
			<!-- //situation_box -->

			<div class="m_one_banner box_section">
				<script>
					var eventMethod = window.addEventListener ? "addEventListener"
							: "attachEvent";
					var eventer = window[eventMethod];
					var messageEvent = eventMethod == "attachEvent" ? "onmessage"
							: "message";

					// Listen to message from child window
					eventer(messageEvent, function(e) {
						/* if(e.data > 0){ */
						$("#iframe_banner").css("height", e.data);
						$(".m_one_banner").css("height", e.data);
						if (e.data <= 0) {
							$(".m_one_banner ").hide();
						}
						/* } else {
						  $(".m_one_banner ").hide();
						} */

					}, false);
				</script>
				<iframe src="/normal.do?viewId=V_COMM0038&serviceId=S_CMIS0040" id="iframe_banner" width="100%" frameborder="0" scrolling="no" height=0></iframe>
				<!-- <iframe src="http://m2.tworld.co.kr/html/main/new_main_subbanner.html" id="iframe_banner" width="100%" frameborder="0" scrolling="no" height=0></iframe> -->
			</div>

			<!-- 2016-08-25 ����_02 [e] --
		<!-- floor_btn -->
			<div class="floor_btn">
				<p class="left">
					<a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0031&viewId=V_CENT0105&domainVer=m2&menuId=7,1&mainMenu=Y" title="T world ���� ã�� �ٷΰ���"><img src="http://m2.tworld.co.kr/img/new_main/img_floorBtn01.png" alt="Ƽ���� ����ã��"></a>
				</p>
				<p class="right">
					<a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0006&viewId=V_CENT0103&domainVer=m2&menuId=7,3&mainMenu=Y" title="���� ã�� ���� �ٷΰ���"><img src="http://m2.tworld.co.kr/img/new_main/img_floorBtn02.png" alt="����ã�¹���"></a>
				</p>
			</div>
			<!-- //floor_btn -->
			<!-- notice -->
			<div id="notice" class="notice">
				<h2>
					<a href="/normal.do?serviceId=S_ETC_0021&viewId=V_CMN_0004&domainVer=m2&menuId=8,1&osType=I">��������</a>
				</h2>

				<ul>
				</ul>
				<button class="go_top ico_comm" onclick="gotop();">������</button>
			</div>
			<!-- //notice -->
		</div>
		<!-- //main_content -->
	</section>
	<!-- //section -->
	<!-- main_footer -->
	<footer id="main_footer">
		<ul class="f_menu">
			<li><a href="http://m2.tworld.co.kr/normal.do?serviceId=S_ETC_0021&viewId=V_CMN_0004&domainVer=m2&menuId=8,2&mainMenu=Y" title="�̿��� �ٷΰ���">�̿���</a></li>
			<li><a href="http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0033&viewId=V_CMIS0002&mainMenu=Y" class="nolink" title="�̿��� ���ؿ��� ���� �ٷΰ���">�̿��� ���ؿ��� ����</a></li>
			<li><a href="https://www.skt-id.co.kr/member/terms/termsInfo.do?chnlId=TWDT&client_type=ANDROID&stplTypCd=02" title="�������� ��޹�ħ �ٷΰ���">�������� ó����ħ</a></li>
		</ul>
		<ul class="f_menu">
			<li><a href="javascript:$.goURL('http://m2.tworld.co.kr/normal.do?serviceId=S_CMIS0002&amp;viewId=V_CENT1061&amp;mainMenu=Y');" class="nolink" title="������ �̸��� ���� �ٷΰ���">������ �̸��� ����</a></li>
			<li><a href="http://m2.tworld.co.kr/normal.do?serviceId=SDUMMY0001&viewId=V_CENT2061" title="��ȭǰ�� �������� �ٷΰ���">��ȭǰ�� ��������</a></li>
			<li><a href="http://m2.tworld.co.kr/normal.do?serviceId=SDUMMY0001&viewId=V_CENT1070&mainMenu=Y" title="Ī���մϴ� �ٷΰ���">Ī���մϴ�</a></li>
		</ul>

		<!--  2016-02-22 �߰�_01 [e] -->
		<a href="#none" class="conp_c" id="conp_c0" style="display: block;"><img src="http://m2.tworld.co.kr/img/new_main/btn_inpor_on.png" width="53" alt="��������"></a> <a href="#none" class="conp_c" id="conp_c1" style="display: none"><img src="http://m2.tworld.co.kr/img/new_main/btn_inpor_off.png" width="53" alt="�����ݱ�"></a>

		<!-- floor_con -->
		<div class="floor_con">
			<ul class="fc_desc">
				<li><span class="bar">����Ư���� �߱� ������ 65(������ 2��)</span> ��ǥ�̻�/���� : ����ȣ</li>
				<li><span class="bar">����� ��Ϲ�ȣ : 104-81-37225</span> �Ǹ��㰡��ȣ : �߱� - 02923ȣ</li>
				<li>�̵���ȭ ������ : �޴��� �������� T.114(����)</li>
				<li>���ͳ�/(����)��ȭ/���ͳ���ȭ ������ : T.080-816-2000(����)</li>
			</ul>
			<div class="footbtn">
				<a href="javascript:golink2('www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2004301010030201122&area1=&area2=&currpage=1&searchKey=01&searchVal=%EC%97%90%EC%8A%A4%EC%BC%80%EC%9D%B4%ED%85%94%EB%A0%88%EC%BD%A4&stdate=&enddate=', 'Y', 'OUT')" class="batalink" title="����� ���� Ȯ�� �ٷΰ���">����� ���� Ȯ��</a> <a href="http://m2.tworld.co.kr/html/main/main_licence.html" class="batalink" title="���¼ҽ� ���̼��� �ٷΰ���">���¼ҽ� ���̼���</a>
			</div>
		</div>
		<!-- //floor_con -->
		<p class="copylight">
			<a href="http://m2.tworld.co.kr/tweb/main/main.html">&copy;</a> BY SK TELECOM Co., LTD ALL RIGHTS RESERVED
		</p>
		<div class="certify_box">
			<ul>
				<!-- 2016-07-07 ����_01 [s] -->
				<li><img src="http://m2.tworld.co.kr/img/new_main/img_certify01.png" width="100%" alt="2016�� ������������ 19�� ���� 1��"></li>
				<li><img src="http://m2.tworld.co.kr/img/new_main/img_certify02.png" width="100%" alt="2016�� �ѱ������ �������� 19�� ���� 1��"></li>
				<li><img src="http://m2.tworld.co.kr/img/new_main/img_certify03.png" width="100%" alt="�ѱ�����ǰ������ 17�� ���� 1��"></li>
				<li><img src="http://m2.tworld.co.kr/img/new_main/img_certify04.png" width="100%" alt="Mobile Accessibility ����� ���ټ�����"></li>
				<!-- 2016-07-07 ����_01 [e] -->
			</ul>
		</div>
	</footer>
	<!-- //main_footer -->
	<!-- popup -->
	<div class="select_shadow">
		<div class="select_phone" id="phone_num">
			<button class="layer_close cancel">layer close</button>
			<h4>��ȸ�� ����</h4>
			<div id="sel_wrap">
				<ul id="pNum">
				</ul>
			</div>
			<div class="btn_center">
				<button type="button" class="btn_type3" id="ok" style="width: 125px;">Ȯ��</button>
				<button type="button" class="btn_type3 cancel" style="width: 125px;">���</button>
			</div>
		</div>
	</div>
	<!-- //popup -->
	<script type="text/javascript">
		$(function() {
			/* 2016-02-15 �߰�_01 [s] �� ���ټ� ���� */
			$('#conp_c0').click(function() {
				var mainmenuoffset = $("#main_footer").offset().top;
				$("html, body").animate({
					scrollTop : mainmenuoffset
				}, 50);
				$('#conp_c0').hide();
				$('#conp_c1').show();

				$('.floor_con').show();
				$('#main_footer .copylight').css('margin-top', '15px');
				$('#conp_c1').focus();
			})

			$('#conp_c1').click(function() {
				var mainmenuoffset = $("#main_footer").offset().top;
				$("html, body").animate({
					scrollTop : mainmenuoffset
				}, 50);
				$('#conp_c0').show();
				$('#conp_c1').hide();
				$('.floor_con').hide();
				$('#main_footer .copylight').css('margin-top', '5px');
				$('#conp_c0').focus();
			})
			/* 2016-02-15 �߰�_01 [s] �� ���ټ� ���� */

		})

		$(document).ready(function() {

			function randomList() { //���� ����Ʈ ���
				var listItem = $(".situation_box .like_this_type li");
				var arrItem = [], arrView = [];
				var itemCount = listItem.length;
				var viewCount = 3;
				var idx = 0;

				for (var i = 0; i < itemCount; ++i)
					arrView.push(i);
				while (arrItem.length < viewCount) {
					idx = Math.floor(Math.random() * arrView.length);
					arrItem.push(arrView[idx]);
					arrView.splice(idx, 1);
				}
				function sortNumber(a, b) {
					return a - b;
				}
				arrItem.sort(sortNumber);
				for (var i = 0; i < arrItem.length; i++) {
					listItem.eq(arrItem[i]).addClass("on");
					if (i == arrItem.length - 1)
						listItem.eq(arrItem[i]).css("border-bottom", "none");
				}
			}
			randomList();

		});
	</script>
</body>


<script src="/inc/js/iscroll.comp.js"></script>
<script type="text/javascript">
	function gotop() {
		window.scrollTo(0, 0);
		$('#main_header h1 img').focus();
	}

	$(document)
			.ready(
					function() {

						var htmlTag = "";
						var selNum = "";

						htmlTag += "<li><a href='javascript:void(0);' rel=''></li>";
						htmlTag += "<li><a href='javascript:void(0);' rel=''></li>";
						htmlTag += "<li><a href='javascript:void(0);' rel=''></li>";
						htmlTag += "<li><a href='javascript:void(0);' rel=''></li>";

						$.fnBadgeResponse = function() {
							var url = "toapp:tnoti:http://www.naver.com"
							var ifr = $('<iframe />', {
								id : 'badge',
								src : url,
								async : false,
								style : 'display:none',
								load : function() {
								}
							});
							$('body').append(ifr);
						}

						$.fnBadgeResponse();

						$('#sel_phone').append(selNum);
						$('#pNum').html(htmlTag);

						// T �˸� close 

						$('#closeTA')
								.click(
										function() {
											$('.benner_talert').animate({
												height : '0'
											}, 200)
											$('#closeTA').hide();

											if (MobileUA.IOS) { // 
												localStorage.setItem(
														"com.skt.prod.tbanner",
														20170324);
											} else {
												location.href = "toapp.settingpackageconfirmdate:com.skt.prod.tbanner";
											}
											var url = "toapp:bannerclose"
											var ifr = $('<iframe />', {
												id : 'TNoticeClose',
												src : url,
												async : false,
												style : 'display:none',
												load : function() {
												}
											});

											$('body').append(ifr);
										})

						$("#all_menu").bind("click", function() {
							location.href = "toapp:allmenu";
							return false;
						});

						$("#b_search")
								.bind(
										"click",
										function() {
											var fm = document.search;
											if (fm.query.value == "") {
												fm.query.value = '';
											}

											var re_query = fm.query.value;

											re_query = encodeURIComponent(re_query);

											var re_query2 = re_query.replace(
													/%EB%88%9D/gi, "%2345597");
											var re_query3 = decodeURIComponent(re_query2);
											fm.query.value = re_query3;

											$("#search").submit();
											return false;
										});

						$("#b_sms").bind("click", function() {
							location.href = "toapp:smspage";
							return false;
						});
						/**
						 * Format date as a string
						 * @param date - a date object (usually "new Date();")
						 * @param format - a string format, eg. "DD-MM-YYYY"
						 */
						$.fnDateFormat = function(date, format) {
							// Calculate date parts and replace instances in format string accordingly
							format = format.replace("DD",
									(date.getDate() < 10 ? '0' : '')
											+ date.getDate()); // Pad with '0' if needed
							format = format.replace("MM",
									(date.getMonth() < 9 ? '0' : '')
											+ (date.getMonth() + 1)); // Months are zero-based
							format = format.replace("YYYY", date.getFullYear());
							return format;
						}

						//  banner �ҷ����� �κ�
						$
								.post(
										"/json/main_banner.json",
										function(data) {

											var jsonData = JSON.parse(data);
											var currentDate = new Date();
											var nDate = $.fnDateFormat(
													currentDate, "YYYYMMDD");
											var banner = "";
											var page = "";
											var count = 0;

											$
													.each(
															jsonData,
															function(index,
																	value) {

																var b_sdate = new Date(
																		value.b_start_date
																				.replace(
																						/-/g,
																						"/"));
																var b_edate = new Date(
																		value.b_end_date
																				.replace(
																						/-/g,
																						"/"));
																b_sdate = $
																		.fnDateFormat(
																				b_sdate,
																				"YYYYMMDD");
																b_edate = $
																		.fnDateFormat(
																				b_edate,
																				"YYYYMMDD");
																var b_os_typ_bltn_yn = value.b_os_typ_bltn_yn;

																if ('A' == 'I') {
																	if (b_os_typ_bltn_yn == 'B'
																			|| b_os_typ_bltn_yn == ''
																			|| b_os_typ_bltn_yn == 'I') {
																		if ((b_edate >= nDate)
																				&& (b_sdate <= nDate)) {
																			count++;
																			var t_link = value.b_link;
																			t_link = t_link
																					.replace(
																							"http://",
																							"");
																			banner = "<li style=\"background:"+ value.b_banner_bg +"\" ><a href=\"javascript:goBanner('"
																					+ t_link
																					+ "', '"
																					+ value.b_billyn
																					+ "', '"
																					+ value.b_inout
																					+ "', '"
																					+ value.b_static_cd
																					+ "')\" title='��â'><img src='"+ value.b_img +"' alt='"+ value.b_alt +"'/></a></li>";
																			page = "<span class='b_page'><img src='http://m2.tworld.co.kr/img/blank.png' width='9px' height='9px' alt='"+count+"��° ��ʺ���' /></span> "; //2013-12-12 �����ټ� ����
																			$(
																					'#banner ul')
																					.append(
																							banner);
																			$(
																					'#banner .bplay_btn')
																					.before(
																							page);
																		}
																	}
																} else {
																	if (b_os_typ_bltn_yn == 'B'
																			|| b_os_typ_bltn_yn == ''
																			|| b_os_typ_bltn_yn == 'A') {
																		if ((b_edate >= nDate)
																				&& (b_sdate <= nDate)) {
																			count++;
																			var t_link = value.b_link;
																			t_link = t_link
																					.replace(
																							"http://",
																							"");
																			banner = "<li style=\"background:"+ value.b_banner_bg +"\" ><a href=\"javascript:goBanner('"
																					+ t_link
																					+ "', '"
																					+ value.b_billyn
																					+ "', '"
																					+ value.b_inout
																					+ "', '"
																					+ value.b_static_cd
																					+ "')\" title='��â'><img src='"+ value.b_img +"' alt='"+ value.b_alt +"'/></a></li>";
																			page = "<span class='b_page'><img src='http://m2.tworld.co.kr/img/blank.png' width='9px' height='9px' alt='"+count+"��° ��ʺ���' /></span> "; //2013-12-12 �����ټ� ����
																			$(
																					'#banner ul')
																					.append(
																							banner);
																			$(
																					'#banner .bplay_btn')
																					.before(
																							page);
																		}
																	}

																}
															});

											$('#banner ul li:first').addClass(
													'c_page');
											$('span.b_page:first').addClass(
													'on');
										});
						//tdirect���
						$
								.post(
										"/json/main_banner_tdirect_A.json",
										function(data) {
											var cnt = 0;
											var jsonData = JSON.parse(data);
											var tdirect_l = '';
											var tdirect_r = '';
											$
													.each(
															jsonData,
															function(index,
																	value) {
																var b_exps_seq = value.b_exps_seq;
																var b_title_nm = value.b_title_nm
																		.split('(br)');
																var b_title_nm_f = b_title_nm[0];
																var b_title_nm_s = b_title_nm[1];
																var t_link = value.b_link;
																t_link = t_link
																		.replace(
																				"http://",
																				"");
																t_link = t_link
																		.replace(
																				"https://",
																				"");
																if (cnt == 0) {
																	tdirect_l += "<span><strong>"
																			+ b_title_nm_f
																			+ "</strong><br>"
																			+ b_title_nm_s
																			+ "</span>"
																	tdirect_l += "<a href=\"javascript:goBanner('"
																			+ t_link
																			+ "', '"
																			+ value.b_billyn
																			+ "', '"
																			+ value.b_inout
																			+ "', '"
																			+ value.b_static_cd
																			+ "')\" class='img' title='"
																			+ value.b_alt
																			+ "'><img src='"+ value.b_img +"'/></a>";
																} else if (cnt == 1) {
																	tdirect_r += "<span><strong>"
																			+ b_title_nm_f
																			+ "</strong><br>"
																			+ b_title_nm_s
																			+ "</span>"
																	tdirect_r += "<a href=\"javascript:goBanner('"
																			+ t_link
																			+ "', '"
																			+ value.b_billyn
																			+ "', '"
																			+ value.b_inout
																			+ "', '"
																			+ value.b_static_cd
																			+ "')\" class='img' title='"
																			+ value.b_alt
																			+ "'><img src='"+ value.b_img +"'/></a>";
																}
																cnt++;
															});
											$('#tdirect_l').append(tdirect_l);
											$('#tdirect_r').append(tdirect_r);
										})
								.error(
										function() {//�������ÿ� ���� json ȣ��
											$
													.post(
															"/json/main_banner_tdirect.json",
															function(data) {
																var jsonData = JSON
																		.parse(data);
																var cnt = 0;
																var tdirect_l = '';
																var tdirect_r = '';
																$
																		.each(
																				jsonData,
																				function(
																						index,
																						value) {
																					var b_exps_seq = value.b_exps_seq;
																					var b_title_nm = value.b_title_nm
																							.split('(br)');
																					var b_title_nm_f = b_title_nm[0];
																					var b_title_nm_s = b_title_nm[1];
																					var t_link = value.b_link;
																					t_link = t_link
																							.replace(
																									"http://",
																									"");
																					t_link = t_link
																							.replace(
																									"https://",
																									"");
																					if (cnt == 0) {
																						tdirect_l += "<span><strong>"
																								+ b_title_nm_f
																								+ "</strong><br>"
																								+ b_title_nm_s
																								+ "</span>"
																						tdirect_l += "<a href=\"javascript:goBanner('"
																								+ t_link
																								+ "', '"
																								+ value.b_billyn
																								+ "', '"
																								+ value.b_inout
																								+ "', '"
																								+ value.b_static_cd
																								+ "')\" class='img' title='"
																								+ value.b_alt
																								+ "'><img src='"+ value.b_img +"'/></a>";
																					} else if (cnt == 1) {
																						tdirect_r += "<span><strong>"
																								+ b_title_nm_f
																								+ "</strong><br>"
																								+ b_title_nm_s
																								+ "</span>"
																						tdirect_r += "<a href=\"javascript:goBanner('"
																								+ t_link
																								+ "', '"
																								+ value.b_billyn
																								+ "', '"
																								+ value.b_inout
																								+ "', '"
																								+ value.b_static_cd
																								+ "')\" class='img' title='"
																								+ value.b_alt
																								+ "'><img src='"+ value.b_img +"'/></a>";
																					}
																					cnt++;
																				})
																$('#tdirect_l')
																		.append(
																				tdirect_l);
																$('#tdirect_r')
																		.append(
																				tdirect_r);
															});
										});

						//howNew��� 
						$
								.post(
										"/json/main_banner_hotnew_A.json",
										function(data) {
											var cnt = 0;
											var jsonData = JSON.parse(data);
											var hotNew_l = '';
											var hotNew_r = '';
											$
													.each(
															jsonData,
															function(index,
																	value) {
																var t_link = value.b_link;
																t_link = t_link
																		.replace(
																				"http://",
																				"");
																t_link = t_link
																		.replace(
																				"https://",
																				"");
																if (cnt == 0) {
																	hotNew_l = "<a href=\"javascript:goBanner('"
																			+ t_link
																			+ "', '"
																			+ value.b_billyn
																			+ "', '"
																			+ value.b_inout
																			+ "', '"
																			+ value.b_static_cd
																			+ "')\" class='img' title='"
																			+ value.b_alt
																			+ "'><img src='"+ value.b_img +"'/></a>";
																} else if (cnt == 1) {
																	hotNew_r = "<a href=\"javascript:goBanner('"
																			+ t_link
																			+ "', '"
																			+ value.b_billyn
																			+ "', '"
																			+ value.b_inout
																			+ "', '"
																			+ value.b_static_cd
																			+ "')\" class='img' title='"
																			+ value.b_alt
																			+ "'><img src='"+ value.b_img +"'/></a>";
																}
																cnt++;
															});
											$('#hotNew_l').empty();
											$('#hotNew_l').append(hotNew_l);
											$('#hotNew_r').empty();
											$('#hotNew_r').append(hotNew_r);
										});

						//����
						$
								.post(
										"/json/main_banner_band_A.json",
										function(data) {

											var jsonData = JSON.parse(data);
											var band_html = '';
											var currentDate = new Date();
											var nDate = $.fnDateFormat(
													currentDate, "YYYYMMDD");
											$
													.each(
															jsonData,
															function(index,
																	value) {
																var b_sdate = new Date(
																		value.b_start_date
																				.replace(
																						/-/g,
																						"/"));
																var b_edate = new Date(
																		value.b_end_date
																				.replace(
																						/-/g,
																						"/"));
																b_sdate = $
																		.fnDateFormat(
																				b_sdate,
																				"YYYYMMDD");
																b_edate = $
																		.fnDateFormat(
																				b_edate,
																				"YYYYMMDD");
																if ((b_edate >= nDate)
																		&& (b_sdate <= nDate)) {
																	var t_link = value.b_link;
																	t_link = t_link
																			.replace(
																					"http://",
																					"");
																	t_link = t_link
																			.replace(
																					"https://",
																					"");

																	if (t_link == "") {//��ũ�� ���� ���
																		band_html = "<a href=\"#none\"";
																	} else {
																		band_html = "<a href=\"javascript:goBanner('"
																				+ t_link
																				+ "', '"
																				+ value.b_billyn
																				+ "', '"
																				+ value.b_inout
																				+ "', '"
																				+ value.b_static_cd
																				+ "')\"";
																	}
																	band_html += " ga:ca='MTA_main' ga:ac='�� ���' ga:la='"
																			+ value.b_alt
																			+ "'><img ga:ca='MTA_main' ga:ac='�� ���' ga:la='"+value.b_alt+"' src='"+ value.b_img +"'/></a>";
																	$(
																			'.banner_line_banner')
																			.append(
																					band_html)
																			.show();
																}
															});
										})
								.error(
										function() {//�������ÿ� ���� json ȣ��
											var defaultHtml = "<a href=\"#none\" ga:ca=\"MTA_main\" ga:ac=\"�� ���\">";
											defaultHtml += "<img src=\"http://m2.tworld.co.kr/img/new_main/line_banner_NCSI.png\" ga:ca=\"MTA_main\" ga:ac=\"�� ���\" alt=\"3�� �������� 1��, 1��� �� ���϶�� ��Ҹ��� �� ����̰ڽ��ϴ�.\"></a>";
											$('.banner_line_banner').append(
													defaultHtml).show();
										});

						// ��������   �ҷ����� �κ� 		
						$
								.post(
										"/json/notice.json",
										function(data) {
											var notice = '';
											var parsed_data = eval(data
													.replace(/^\s*/, "")
													.replace(/\s*$/, ""));
											var link = '';

											for (i in parsed_data) {
												if (parsed_data[i].notice_os == 'A') {
													link = parsed_data[i].notice_link
															+ "&osType="
															+ parsed_data[i].notice_os;
													notice = "<li><a  style='font-weight:normal;' href='" + link + "'>"
															+ parsed_data[i].notice_txt
															+ "</a></li>";
													$('#notice ul').append(
															notice);
												} else if ('A' == ''
														&& parsed_data[i].notice_os == 'A') {
													link = parsed_data[i].notice_link
															+ "&osType=A";
													notice = "<li><a  style='font-weight:normal;' href='" +link + "'>"
															+ parsed_data[i].notice_txt
															+ "</a></li>";
													$('#notice ul').append(
															notice);
												}
											}
											$('#notice ul li:first').addClass(
													'current');
										});

						//��ȸ�� layer open / close -  2013-11-14 �߰� 
						$('#sel_phone')
								.click(
										function() {
											$('.select_shadow').css(
													'visibility', 'visible');
											$("#viewport")
													.attr("content",
															"user-scalable=no, initial-scale=1.0, width=device-width");
											$("body")
													.addClass('overflowhidden')
													.bind(
															'touchmove',
															function(e) {
																e
																		.preventDefault()
															});
											$('.select_shadow').show();
											iscroll = new iScroll('sel_wrap');
											$('.layer_close').focus();
											return false;
										});

						$('#phone_num .cancel').click(function() {
							$("body").unbind('touchmove');
							$('.select_shadow').css('visibility', 'hidden');
							$("body").removeClass('overflowhidden');
							setTimeout(function() {
								location.reload();
							}, 200);
							$('.select_shadow').hide();
							$('#sel_phone').focus();
							return false;
						});

						//��ȸ�� ���� -  2013-11-14 �߰� 
						$('#phone_num ul li ').click(
								function(event) {

									var $this = $(this);
									$this.siblings().children('a').removeClass(
											'checked');
									$this.children('a').addClass('checked');
									$('#selMultiNum').val(
											$this.children('a').attr('rel'));
									return false;
								});

						//��ȸ�� ����
						$('#ok')
								.click(
										function() {

											$("body").removeClass(
													'overflowhidden');
											$("body").unbind('touchmove');
											$("#viewport")
													.removeAttr('content');
											$("#viewport")
													.attr("content",
															"user-scalable=yes, initial-scale=1.0, width=device-width");
											$('.select_shadow').hide();
											setTimeout(function() {
												fnChgSelect();
											}, 100);

											return false;
										});

						var iscroll = new iScroll('sel_wrap');

					});

	var param = '&APP_VER=&OS_TYPE=A'

	function fnChgSelect() {
		var fm = document.frmMultiNumSelect;
		var svc_mgmt_num = fm.selMultiNum.value;
		var url = '';

		if (url.indexOf("?") > -1) {
			url += "&";
		} else {
			url += "?";
		}
		url += "svc_mgmt_num=" + svc_mgmt_num + "&isRefresh=Y&returnPage=";

		if ("A" == "A") {
			window.toapp.syncSession(svc_mgmt_num);
			location.replace(url);
		} else if ("A" == "I") {
			location.href = "toapp:syncsession:" + svc_mgmt_num; // iOS���������� ȣ��
			return;
		} else {
			location.replace(url);
		}
	}

	// ������ toapp:syncsession: ȣ���� �ݹ�
	function synccallback() {
		var beforeValue = "";
		var fm = document.frmMultiNumSelect;
		var svc_mgmt_num = fm.selMultiNum.value;
		var url = '';
		if (url.indexOf("?") > -1) {
			url += "&";
		} else {
			url += "?";
		}

		url += "svc_mgmt_num=" + svc_mgmt_num + "&isRefresh=Y&returnPage=";
		fm.selMultiNum.value = beforeValue; // �����丮���Ҷ� ȭ��� ��ũ�� �ȸ¾Ƽ� �߰�
		location.href = url;
	}

	function goBanner(link, billyn, inout, static_cd) {
		if ("Y" == billyn) {
			if (confirm("3G/LTE�� ��� �� ������ ����� �߻��˴ϴ�.")) {
				callCSScript('', '', static_cd, '', '');
				if ("I" == "A") { // OS üũ
					if (inout == "OUT")
						toapp.webbrowserouter(link);
					else
						location.href = "http://" + link;
				} else if ("I" == "I") {
					if (inout == "OUT")
						location.href = "toapp:webbrowserouter:" + link;
					else
						location.href = "http://" + link;
				}
			}
		} else {
			callCSScript('', '', static_cd, '', '');
			if ("I" == "A") { // OS üũ
				if (inout == "OUT")
					toapp.webbrowserouter(link);
				else
					location.href = "http://" + link;
			} else if ("I" == "I") {
				if (inout == "OUT")
					location.href = "toapp:webbrowserouter:" + link;
				else
					location.href = "http://" + link;
			}
		}
	}

	//MOTP �������� Ȯ���Ѵ�.
	function checkMOTPAccess() {
		var frm = document.otpForm;
		frm.cryptVal.value = "";
		frm.version.value = "";
		frm.appDate.value = "";

		if (frm.cryptVal.value != "" && frm.version.value != "") {
			frm.target = "otpFrame";
			frm.action = "/jsp/main/otp_access_check.jsp";
			frm.submit();
		}
	}

	//mdn���� session�� �����Ѵ�.
	function setMDN() {
		var frm = document.mdnForm;
		frm.cryptVal.value = "";

		if (frm.cryptVal.value != "") {
			frm.target = "mdnFrame";
			frm.action = "/jsp/main/mdn_session_reg.jsp";
			frm.submit();
		}
	}

	//MOTP�� �̵��Ѵ�.
	function gotoMOTP() {
		var frm = document.otpForm;
		frm.cryptVal.value = "";
		frm.version.value = "";
		frm.appDate.value = "";
		frm.target = "";
		frm.action = "/motp.do";
		frm.submit();
	}
</script>
</html>
<iframe id="otpFrame" name="otpFrame" style="display: none;"></iframe>
<form name="otpForm" method="post">
	<input type="hidden" name="cryptVal"> <input type="hidden" name="version"> <input type="hidden" name="appDate">
</form>
<iframe id="mdnFrame" name="mdnFrame" style="display: none;"></iframe>
<form name="mdnForm" method="post">
	<input type="hidden" name="cryptVal">
</form>