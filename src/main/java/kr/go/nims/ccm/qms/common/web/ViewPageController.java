package kr.go.nims.ccm.qms.common.web;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.nims.ccm.qms.dao.MostRecentStuffDAOService;
import kr.go.nims.ccm.qms.dao_L2.MostRecentStuffDAOService_L2;
import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;

@Controller 
public class ViewPageController {

	Logger log = Logger.getLogger(this.getClass());
    
	
	 @Autowired
	 private MostRecentStuffDAOService mostRecentStuffDAOService;
	 
//	 @Autowired
//	 private MostRecentStuffDAOService_L2 mostRecentStuffDAOService_L2;
	 
//	 private static final Logger logger = LoggerFactory.getLogger(ViewPageController.class);
	 
	/**
	 *
	 */
	@RequestMapping(value = "/cmm/forwardPage.do")
	public String forwardPageWithMenuNo(HttpServletRequest request, @RequestParam Map<String, Object> commandMap)
	  throws Exception{
		return "";
	}

	/**
	 * mainView ae yum
	 */
	@RequestMapping(value = "/common/mainView.do")
	public String getMainView(HttpServletRequest request, ModelMap model) throws Exception{
		//notice x last 3
		/*
        int numPerPage = 3;
        int pagePerBlock = 3;
        int totalRecord = boardService.getTotalRecord("notice", "");
        PagingHelper pagingHelper = new PagingHelper(totalRecord, 1, numPerPage, pagePerBlock);
        boardService.setPagingHelper(pagingHelper);
        List<Article> list = boardService.getArticleList("notice", "");
        model.addAttribute("notices", list);
        */
        //MostRecentStuffVO stuff =  timeseriesService.retrievingIfArcticDataExists();
        //model.addAttribute("mostRecentStuff", stuff);
		
		log.debug("getMainView(...)");
		
		return "main/main";
	}
	
	
	//testOnly
	//=============================================================================================================
	//=============================================================================================================
	/** alternative/a.do */
	@RequestMapping(value = "lvl_1/QI.do")
	public String alt0(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		//2015.11.17데이터는 L1A만있어ㅠ 모든 변수 공통적으로 데이터 존재하는 날짜는 2013-08-09 임!!! L1A 환경정보는 2015년 11-17데이터밖에 없음ㅠ
		
//		MostRecentStuffVO mostRecent = new MostRecentStuffVO();
//		SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//		java.util.Date d = datetimeFormatter1.parse("2013-08-07 23:59:00");
//		Timestamp dTimestamp = new Timestamp(d.getTime());
//		mostRecent.setLateststuff(dTimestamp);	
		
		log.info("seekLatestStuff(..) lvl_1/QI.do");
		
		model.addAttribute("extSeries", mostRecent);
		
		
		
		return "L1/LV_1_AB";
	}
	
	
	
	/** alternative/b.do*/
	@RequestMapping(value = "lvl_2/monthlyValidation.do")
	public String alt1(HttpServletRequest request, ModelMap model) throws Exception{
//		UpToDateStuffVO mostRecent = mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		MostRecentStuffVO mostRecent = new MostRecentStuffVO();
		SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//		java.util.Date d = datetimeFormatter1.parse("2016-04-30 23:59:00");
		java.util.Date d = datetimeFormatter1.parse("2016-11-30 23:59:00");
		Timestamp dTimestamp = new Timestamp(d.getTime());
		mostRecent.setLateststuff(dTimestamp);
		
		model.addAttribute("extSeries", mostRecent);
		return "L2/LV_2_monthlyValidation";
	}
	
	/** alternative/b.do*/
	@RequestMapping(value = "report.doe")
	public String getReport(HttpServletRequest request, ModelMap model) throws Exception{
		
		MostRecentStuffVO mostRecent = new MostRecentStuffVO();
		
		SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		java.util.Date d = datetimeFormatter1.parse("2016-06-16 23:59:00");
		Timestamp dTimestamp = new Timestamp(d.getTime());
		mostRecent.setLateststuff(dTimestamp);
		
		model.addAttribute("extSeries", mostRecent);
		return "L2/LV_2_reportView";
	}
	
//	/** lvl_2/dailyValidation.do*/
	@RequestMapping(value = "lvl_2/dailyValidation.do")	
	public String l2_dailyValidation(HttpServletRequest request, ModelMap model) throws Exception{
	MostRecentStuffVO mostRecent = new MostRecentStuffVO();
		SimpleDateFormat datetimeFormatter1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		java.util.Date d = datetimeFormatter1.parse("2016-11-11 23:59:00");
		Timestamp dTimestamp = new Timestamp(d.getTime());
		mostRecent.setLateststuff(dTimestamp);
		
		model.addAttribute("extSeries", mostRecent);
		return "L2/LV_2_dailyValidation";
	}
	
	
	/** test/snippet1.do */
	
	@RequestMapping(value = "test/snippet1.do")
	public String test_1(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "_codeSnippet/snippet1";
	}
	/** test/snippet2.do */
	@RequestMapping(value = "test/snippet2.do")
	public String test_2(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "_codeSnippet/snippet2";
	}
	/** test/snippet3.do */
	@RequestMapping(value = "test/snippet3.do")
	public String test_3(HttpServletRequest request, ModelMap model) throws Exception{
		return "_codeSnippet/snippet3";
	}
	/** test/snippet4.do */
	@RequestMapping(value = "test/snippet4.do")
	public String test_4(HttpServletRequest request, ModelMap model) throws Exception{
		return "_codeSnippet/snippet4";
	}
	/** test/snippet5.do */
	@RequestMapping(value = "test/snippet5.do")
	public String test_5(HttpServletRequest request, ModelMap model) throws Exception{
		return "_codeSnippet/snippet5";
	}
	
	//=============================================================================================================
	//=============================================================================================================
	//=============================================================================================================
	//=============================================================================================================
	
	
	
	
	
	
	
	/** QI/LV1A.do */
	/** QI/LV1A.do */
	/** QI/LV1A.do */
	@RequestMapping(value = "QI/LV1A.do")
	public String get_L1A_QI_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "QI/QI_LV1A";
	}
	
	/** EI/LV1A.do */
	/** EI/LV1A.do */
	/** EI/LV1A.do */
	@RequestMapping(value = "EI/LV1A.do")
	public String get_L1A_EI_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
		return "EI/EI_LV1A";
	}
	
	
	
	
	
	
	/**QI_level_1_a.do*/
	/**QI_level_1_a.do*/
	/**QI_level_1_a.do*/
	@RequestMapping(value = "QI/level_1_a.do")
	public String get_L1A_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff("CPP_RADIODETPARAM_V");
		model.addAttribute("extSeries", mostRecent);
//		return "QI/level_1_a";
		return "QI/level_1_a";
	}
	
	/**level_1_a_IRRS.do*/
	/**level_1_a_IRRS.do*/
	@RequestMapping(value = "QI/level_1_a_IRRadiance.do")
	public String get_L1A_IRRS_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff_IRRS("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_IRRS";
	}
	
	/**level_1_a_VisiblePRNU.do*/
	/**level_1_a_VisiblePRNU.do*/
	@RequestMapping(value = "QI/level_1_a_VisiblePRNU.do")
	public String get_L1A_VisPRNU_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff_VisPRNU("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_VisPRNU";
	}
	
	/**level_1_a_IR_PRNU.do*/
	/**level_1_a_IR_PRNU.do*/
	@RequestMapping(value = "QI/level_1_a_IR_PRNU.do")
	public String get_L1A_IRPRNU_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff_IRPRNU("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_IRPRNU";
	}
	
	/**level_1_a_IR_NEDT.do*/
	/**level_1_a_IR_NEDT.do*/
	@RequestMapping(value = "QI/level_1_a_IR_NEDT.do")
	public String get_L1A_IRNEDT_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestStuff_IRNEDT("ID_GOES_HERE");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_a_IRNEDT";
	}
	
	
	
	
	
	
	
	
	//================================================================================================================LEVEL 1 B
	
	
	/**QI_level_1_b.do*/
	/**QI_level_1_b.do*/
	/**QI_level_1_b.do*/
	@RequestMapping(value = "QI/level_1_b.do")
	public String get_L1B_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		MostRecentStuffVO mostRecent =  mostRecentStuffDAOService.seekLatestOne("CPP_NAVPERFO_V");
		model.addAttribute("extSeries", mostRecent);
		return "QI/level_1_b";
	}
	
	
	/**QI_level_2.do*/
	/**QI_level_2.do*/
	/**QI_level_2.do*/
	@RequestMapping(value = "QI/level_2.do")
	public String get_L2_initInfo(HttpServletRequest request, ModelMap model) throws Exception{
		return "QI/level_2";
	}
	
	
	
	
}