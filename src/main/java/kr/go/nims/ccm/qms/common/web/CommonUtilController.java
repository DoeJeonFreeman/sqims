package kr.go.nims.ccm.qms.common.web;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommonUtilController {

    
	@RequestMapping(value="/mePageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, HttpSession session, @RequestParam(value="menuNo", required=false) String menuNo){
		String link = linkPage;
		if (linkPage==null || linkPage.equals("")){
			link="cmm/error/SQMSError";
		}else{
			if(link.indexOf(",")>-1){
			    link=link.substring(0,link.indexOf(","));
			}
		}
		if (menuNo!=null && !menuNo.equals("")){
			session.setAttribute("menuNo",menuNo);
		}
		return link;
	}

	@RequestMapping(value="/mePageLink.haha")
	public String moveToPage_action(@RequestParam("link") String linkPage){
		String link = linkPage;
		if (linkPage==null || linkPage.equals("")){
			link="cmm/SQMSError";
		}
		return link;
	}
	
	@RequestMapping("/validator.do")
	public String validate(){
		return "cmm/validator";
	}

	//=============================================================================================================
	//=============================================================================================================
	/**
	@RequestMapping(value = "async/report/lvl_2/monthly.do")
	@ResponseBody
	public String POIRunner(HttpServletRequest request, @RequestParam("path") String documentPath) {
		String str2return = "No Report available.";
		 //convert .docx to HTML string
//		String path = request.getSession().getServletContext().getRealPath("/report") + "/coms_mi_fog_zzz_m_d00000_cn_20160601.docx";
		String path = request.getSession().getServletContext().getRealPath("/report") +"/" + documentPath;
//      InputStream in= new FileInputStream(new File("path_to_file.extension"));
      
		try {
		  System.out.println(path);
		  InputStream in = new FileInputStream(new File(path)); 
		  XWPFDocument document = new XWPFDocument(in);
		  //Prepare Html options
//        XHTMLOptions options = XHTMLOptions.create().URIResolver(new FileURIResolver(new File("word/media")));
//        XHTMLOptions options = XHTMLOptions.create().URIResolver(new FileURIResolver(new File(request.getSession().getServletContext().getRealPath("/report"))));
		  XHTMLOptions options = XHTMLOptions.create();
		  OutputStream out = new ByteArrayOutputStream();
		  XHTMLConverter.getInstance().convert(document, out, options);
		  String html = out.toString();
		  str2return = html;
		} catch (FileNotFoundException e) {
			return str2return;
		} catch (IOException e) {
			return str2return;
		}
		return str2return;
	}
	 *  */
}