package kr.go.nims.ccm.qms.web;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.go.nims.ccm.qms.dao.TimeSeriesDataDAOService;
import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;
import kr.go.nims.ccm.qms.domain.TimeSeriesDataVO;


@Controller
public class TimeSeriesChartController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private TimeSeriesDataDAOService timeSeriesDataDAOService;

	
	
	@RequestMapping(value = "lvl_1/fxxku")
	@ResponseBody
	public String fxxku(HttpServletRequest request, ModelMap model) throws Exception{
		
		log.info("fxxxxxxxxxxxxxxxk !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		return "itWorks";
	}
	
	
	
	/*
	 * Level 1 CRDS : CO
	 * */
	@RequestMapping(value = "timeseries/retrieval/L1_CRDS", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1_CRDS(@RequestParam("targetDate") String targetDate, String dBegin,  String whichVar,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("varType", whichVar);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectCRDSData_L1(hashmap);
		log.info("[" + whichVar + ".results.size()] " + results.size());
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	/*
	 * Level 1 Nephelometer 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L1_NEPHELO", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1_NEPHELO(@RequestParam("targetDate") String targetDate, String dBegin,  String whichVar,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("varType", whichVar);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectNEPHELOData_L1(hashmap);
		log.info("[" + whichVar + ".results.size()] " + results.size());
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}

	
	/*
	 * Level 1 OPC PMX 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L1_OPCPMX", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1_OPC_PMX(@RequestParam("targetDate") String targetDate, String dBegin,  String whichVar,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("varType", whichVar);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectOPCPMXData_L1(hashmap);
		log.info("[" + whichVar + ".results.size()] " + results.size());
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	/*
	 * Level 1 APS M 
	 * Level 1 APS M 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L1_APSM", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1_APS_M(@RequestParam("targetDate") String targetDate, String dBegin,  String whichVar,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("varType", whichVar);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectAPSMData_L1(hashmap);
		log.info("[" + whichVar + ".results.size()] " + results.size());
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	

	
/*	
	@Autowired
	private TimeSeriesDataDAOService_L2 timeSeriesDataDAOService_L2;

	@RequestMapping(value = "timeseries/retrieval/L_2_CLA_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_lvl_2_CLA(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_CLA(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
				vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	@RequestMapping(value = "timeseries/retrieval/L_2_CLD_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_CLD(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_CLD(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	@RequestMapping(value = "timeseries/retrieval/L_2_FOG_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_FOG(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_FOG(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	@RequestMapping(value = "timeseries/retrieval/L_2_AI_DAILY_VALIDATION", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_lvl_2_AI(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService_L2.selectTimeSeriesData_L2_AI(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
//			if(row.get("RMSE").toString().equals("RadianceMin")){
//			System.out.println("[RMSE] " + row.get("RMSE"));
//			System.out.println("[Bias] " + row.get("BIAS"));
			vec0.add(row);
//			}
//			}else if(row.get("NAME").toString().equals("RadianceSTD")){
//				vec4.add(row);
//			}
		}
		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
*/
	
	
	
	
	
	
	
	
	
	
	
	//Level 1 A Visible SNR
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
	@ResponseBody
	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VSNR_Alternative(hashmap);
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec = new Vector<HashMap<String,Object>>();
		
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec6 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec7 = new Vector<HashMap<String,Object>>();
////		
		
		for(HashMap<String,Object> row : results){
			
			HashMap<String,Object> vMap = new HashMap<String,Object> (); 
			String currDate= row.get("DSTR").toString();
			if(row.get("DT_"+detector)==null){ continue; }
			double currVal = Double.parseDouble(row.get("DT_"+detector).toString());
//			vMap.put("DSTR", currDate);
//			vMap.put("D_0", currVal - Double.parseDouble(row.get("DT_0").toString()));
//			vMap.put("D_1", currVal - Double.parseDouble(row.get("DT_1").toString()));
//			vMap.put("D_2", currVal - Double.parseDouble(row.get("DT_2").toString()));
//			vMap.put("D_3", currVal - Double.parseDouble(row.get("DT_3").toString()));
//			vMap.put("D_4", currVal - Double.parseDouble(row.get("DT_4").toString()));
//			vMap.put("D_5", currVal - Double.parseDouble(row.get("DT_5").toString()));
//			vMap.put("D_6", currVal - Double.parseDouble(row.get("DT_6").toString()));
//			vMap.put("D_7", currVal - Double.parseDouble(row.get("DT_7").toString()));
//			vec.add(vMap);
			
			if(row.get("DT_0")!=null){
				HashMap<String,Object> vMap0 = new HashMap<String,Object>();
				vMap0.put("D", currDate);
				vMap0.put("V", currVal - Double.parseDouble(row.get("DT_0").toString()));
				vec0.add(vMap0);
			}
			
			if(row.get("DT_1")!=null){
				HashMap<String,Object> vMap1 = new HashMap<String,Object>();
				vMap1.put("D", currDate);
				vMap1.put("V", currVal - Double.parseDouble(row.get("DT_1").toString()));
				vec1.add(vMap1);
			}
			
			if(row.get("DT_2")!=null){
				HashMap<String,Object> vMap2 = new HashMap<String,Object>();
				vMap2.put("D", currDate);
				vMap2.put("V", currVal - Double.parseDouble(row.get("DT_2").toString()));
				vec2.add(vMap2);
			}
			
			if(row.get("DT_3")!=null){
				HashMap<String,Object> vMap3 = new HashMap<String,Object>();
				vMap3.put("D", currDate);
				vMap3.put("V", currVal - Double.parseDouble(row.get("DT_3").toString()));
				vec3.add(vMap3);
			}
			
			if(row.get("DT_4")!=null){
				HashMap<String,Object> vMap4 = new HashMap<String,Object>();
				vMap4.put("D", currDate);
				vMap4.put("V", currVal - Double.parseDouble(row.get("DT_4").toString()));
				vec4.add(vMap4);
			}
			
			if(row.get("DT_5")!=null){
				HashMap<String,Object> vMap5 = new HashMap<String,Object>();
				vMap5.put("D", currDate);
				vMap5.put("V", currVal - Double.parseDouble(row.get("DT_5").toString()));
				vec5.add(vMap5);
			}
			
			if(row.get("DT_6")!=null){
				HashMap<String,Object> vMap6 = new HashMap<String,Object>();
				vMap6.put("D", currDate);
				vMap6.put("V", currVal - Double.parseDouble(row.get("DT_6").toString()));
				vec6.add(vMap6);
			}
			
			if(row.get("DT_7")!=null){
				HashMap<String,Object> vMap7 = new HashMap<String,Object>();
				vMap7.put("D", currDate);
				vMap7.put("V", currVal - Double.parseDouble(row.get("DT_7").toString()));
				vec7.add(vMap7);
			}
			
		}
		
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		if(vec6.size()!=0)arr.add(vec6);
		if(vec7.size()!=0)arr.add(vec7);
		return arr;
	}
	
//	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
//	@ResponseBody
////	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
//		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.getSeriesRetrieval_L1A_VSNR(targetDate);
//		
//		//ㅠ 
//		ArrayList<Vector> arr = new ArrayList<Vector>();
//		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec6 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec7 = new Vector<HashMap<String,Object>>();
//		
//		for(HashMap<String,Object> row : results){
//			if(row.get("DETECTOR").toString().equals("0")){
//				vec0.add(row);
//			}else if(row.get("DETECTOR").toString().equals("1")){
//				vec1.add(row);
//			}else if(row.get("DETECTOR").toString().equals("2")){
//				vec2.add(row);
//			}else if(row.get("DETECTOR").toString().equals("3")){
//				vec3.add(row);
//			}else if(row.get("DETECTOR").toString().equals("4")){
//				vec4.add(row);
//			}else if(row.get("DETECTOR").toString().equals("5")){
//				vec5.add(row);
//			}else if(row.get("DETECTOR").toString().equals("6")){
//				vec6.add(row);
//			}else if(row.get("DETECTOR").toString().equals("7")){
//				vec7.add(row);
//			}
//		}
//		if(vec0.size()!=0)arr.add(vec0);
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
//		if(vec6.size()!=0)arr.add(vec6);
//		if(vec7.size()!=0)arr.add(vec7);
//		return arr;
//	}
	
	
/*	@RequestMapping(value = "timeseries/retrieval/L_1_A_VSNR", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VsibleSNR(@RequestParam("targetDate") String targetDate,String channel, String detector,  ModelMap model) throws Exception{
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.getSeriesRetrieval_L1A_VSNR(targetDate);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec6 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec7 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("DETECTOR").toString().equals("0")){
				vec0.add(row);
			}else if(row.get("DETECTOR").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("DETECTOR").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("DETECTOR").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("DETECTOR").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("DETECTOR").toString().equals("5")){
				vec5.add(row);
			}else if(row.get("DETECTOR").toString().equals("6")){
				vec6.add(row);
			}else if(row.get("DETECTOR").toString().equals("7")){
				vec7.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		if(vec6.size()!=0)arr.add(vec6);
		if(vec7.size()!=0)arr.add(vec7);
		return arr;
	}
	
*/	
	/*
	 * Level 1 A Visible Radiance*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VR", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VisibleRadiance(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VR(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		
//		('RadianceMin', 'RadianceMax','RadianceMean','RadianceMedian', 'RadianceSTD')
		
		for(HashMap<String,Object> row : results){
			if(row.get("NAME").toString().equals("RadianceMin")){
				vec0.add(row);
			}else if(row.get("NAME").toString().equals("RadianceMax")){
				vec1.add(row);
			}else if(row.get("NAME").toString().equals("RadianceMean")){
				vec2.add(row);
			}else if(row.get("NAME").toString().equals("RadianceMedian")){
				vec3.add(row);
			}else if(row.get("NAME").toString().equals("RadianceSTD")){
				vec4.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	

	
	/*
	 * Level 1 A IR Radiance Statistics _JOHN */
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRRS", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IRRS(@RequestParam("targetDate") String targetDate, String dBegin,  String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_IRRS(hashmap);
		
		//ㅠ 
//		System.out.println("selectMatchingData_IRRS() result.size == " + results.size());
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		
		//(7,8,28,30,31) 
//		Iterator<String> iter = results.get(0).keySet().iterator();
//		while(iter.hasNext()){
//			System.out.println(iter.next());
//		}
		
		for(HashMap<String,Object> row : results){
			if(row.get("PID").toString().equals("7")){
//				System.out.print("\tIMGREF: " + row.get("IMGREF"));
//				System.out.print("\tPID: " + row.get("PID"));
//				System.out.print("\tTYPENAME: " + row.get("TYPENAME"));
//				System.out.println("\tv: " + row.get("PARAMVALUE"));
				vec0.add(row);
			}else if(row.get("PID").toString().equals("8")){
				vec1.add(row);
			}else if(row.get("PID").toString().equals("28")){
				vec2.add(row);
			}else if(row.get("PID").toString().equals("30")){
				vec3.add(row);
			}else if(row.get("PID").toString().equals("31")){
				vec4.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A Visible PRNU*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_VisblePRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_VsiblePRNU(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_VisPRNU(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
				vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A IR PRNU*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRPRNU", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IR_PRNU(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_IRPRNU(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A IR NEDT*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_IRNEDT", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_IR_NEDT(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("detector", detector);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1A_IRNEDT(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		
		
		for(HashMap<String,Object> row : results){
			if(row.get("CHANNEL").toString().equals("2")){
				vec0.add(row);
			}else if(row.get("CHANNEL").toString().equals("3")){
				vec1.add(row);
			}else if(row.get("CHANNEL").toString().equals("4")){
				vec2.add(row);
			}else if(row.get("CHANNEL").toString().equals("5")){
				vec3.add(row);
			}
		}
		if(vec0.size()!=0)arr.add(vec0);
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		return arr;
	}
	
	
	
	/*
	 * Level 1 A ENV*/
	@RequestMapping(value = "timeseries/retrieval/L_1_A_ENV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L1A_ENV(@RequestParam("targetDate") String targetDate, String dBegin,  String ENVType,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		hashmap.put("varType", ENVType);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectEnvData_L1A(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	

	
	
	
	/*
	 * Number of Valid Landmarks*/
//	@RequestMapping(value = "timeseries/retrieval/L_1_B_NVL", method=RequestMethod.GET)
//	@ResponseBody
////	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//	public ArrayList<Vector> selectMatchingData_NumberOfValidLandmarks(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
//		
//		HashMap<String, String> hashmap = new HashMap<String, String>();
//		hashmap.put("targetDate", targetDate);
//		hashmap.put("dBegin", dBegin);
//		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_NVL(hashmap);
//		
//		
//		//ㅠ 
//		ArrayList<Vector> arr = new ArrayList<Vector>();
//		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
//		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
//		
//		for(HashMap<String,Object> row : results){
//			if(row.get("ROIID").toString().equals("1")){
//				vec1.add(row);
//			}else if(row.get("ROIID").toString().equals("2")){
//				vec2.add(row);
//			}else if(row.get("ROIID").toString().equals("3")){
//				vec3.add(row);
//			}else if(row.get("ROIID").toString().equals("4")){
//				vec4.add(row);
//			}else if(row.get("ROIID").toString().equals("5")){
//				vec5.add(row);
//			}
////			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
////		for(HashMap<String,Object> row : results){
////			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
//////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
////		}
////		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
//		return arr;
//	}
	
	/*
	 * 
	 * 2017-04-07 
	 * Level 1 B 품질지표의 경우 영역별 데이타 타임이 달라!!!!
	 * 
	 * Number of Valid Landmarks
	 * 
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_1_B_NVL", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_NumberOfValidLandmarks(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_NVL(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
//		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	
	
	/* L_1_B_STDDEV
	 * L_1_B_STDDEV*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_STDDEV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_STDDEV(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_STDDEV(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	
	
	/* L_1_B_QUADDIST
	 * L_1_B_QUADDIST
	 * */
	@RequestMapping(value = "timeseries/retrieval/L_1_B_QUADDIST", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_QUADDIST(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_QUADDIST(hashmap);
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}

	
	@RequestMapping(value = "timeseries/retrieval/L_1_B_RAVG", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_ResidualAvg(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_RAVG(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("IMGMODEID").toString().equals("0")){
				vec1.add(row);
			}else if(row.get("IMGMODEID").toString().equals("1")){
				vec2.add(row);
			}else if(row.get("IMGMODEID").toString().equals("2")){
				vec3.add(row);
			}else if(row.get("IMGMODEID").toString().equals("3")){
				vec4.add(row);
			}else if(row.get("IMGMODEID").toString().equals("4")){
				vec5.add(row);
			}
		}
//		if(vec1.size()!=0)arr.add(vec1);
//		if(vec2.size()!=0)arr.add(vec2);
//		if(vec3.size()!=0)arr.add(vec3);
//		if(vec4.size()!=0)arr.add(vec4);
//		if(vec5.size()!=0)arr.add(vec5);
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
		return arr;
	}
	
	
	
	
	/*
	@RequestMapping(value = "timeseries/retrieval/L_1_B_STDDEV", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_STDDEV(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_STDDEV(hashmap);
		
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
		}
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		
		return arr;
	}
	
	
	@RequestMapping(value = "timeseries/retrieval/L_1_B_QUADDIST", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_L_1_B_QUADDIST(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_QUADDIST(hashmap);
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
		}
		if(vec1.size()!=0)arr.add(vec1);
		if(vec2.size()!=0)arr.add(vec2);
		if(vec3.size()!=0)arr.add(vec3);
		if(vec4.size()!=0)arr.add(vec4);
		if(vec5.size()!=0)arr.add(vec5);
		
		return arr;
	}

	
	@RequestMapping(value = "timeseries/retrieval/L_1_B_RAVG", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_ResidualAvg(@RequestParam("targetDate") String targetDate, String dBegin, String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
		
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_RAVG(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec1 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec2 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec3 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec4 = new Vector<HashMap<String,Object>>();
		Vector<HashMap<String, Object>> vec5 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			if(row.get("ROIID").toString().equals("1")){
				vec1.add(row);
			}else if(row.get("ROIID").toString().equals("2")){
				vec2.add(row);
			}else if(row.get("ROIID").toString().equals("3")){
				vec3.add(row);
			}else if(row.get("ROIID").toString().equals("4")){
				vec4.add(row);
			}else if(row.get("ROIID").toString().equals("5")){
				vec5.add(row);
			}
		}
		arr.add(vec1);
		arr.add(vec2);
		arr.add(vec3);
		arr.add(vec4);
		arr.add(vec5);
//		for(HashMap<String,Object> row : results){
//			System.out.println("[DSTR: " + row.get("DSTR") + " ] [ROIID: " + row.get("ROIID") + "] [COUNT: " + row.get("COUNT") + "]");
////		    System.out.println("[DSTR: " + row.get("DSTR") + " ] [VALUE: " + row.get("VALUE") + "] [NAME: " + row.get("NAME") + "]");
//		}
//		return timeSeriesDataDAOService.getSeriesRetrieval_L1B_NVL(targetDate);
		return arr;
	}
	*/
	
	
	
	/*
	 * Level 1 B ENV Spacecraft Position (at image center)*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_SCPOS", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_spacecraftPosition(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_SCPOS(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	/*
	 * Level 1 B ENV Spacecraft Attitude (AOCS Local Orbital Frame)*/
	@RequestMapping(value = "timeseries/retrieval/L_1_B_SCATT", method=RequestMethod.GET)
	@ResponseBody
//	public ArrayList<HashMap<String,Object>> selectMatchingData(@RequestParam("targetDate") String targetDate,String menuId, String submenuId, String imgMode,  ModelMap model) throws Exception{
	public ArrayList<Vector> selectMatchingData_spacecraftAttitude(@RequestParam("targetDate") String targetDate, String dBegin, String channel, String detector,  ModelMap model) throws Exception{
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("targetDate", targetDate);
		hashmap.put("dBegin", dBegin);
		ArrayList<HashMap<String,Object>> results = timeSeriesDataDAOService.selectTimeSeriesData_L1B_SCATT(hashmap);
		
		//ㅠ 
		ArrayList<Vector> arr = new ArrayList<Vector>();
		Vector<HashMap<String, Object>> vec0 = new Vector<HashMap<String,Object>>();
		
		for(HashMap<String,Object> row : results){
			vec0.add(row);
		}
		if(vec0.size()!=0)arr.add(vec0);
		return arr;
	}
	
	
	
	@RequestMapping(value = "/ajax/getSeriesData")
	@ResponseBody
	public TimeSeriesDataVO timeseriesOutputter(@RequestParam("whichSeries") String typeId, HttpServletRequest req ){
//		("timeseriesOutputter(" + typeId + ") call this method causes 406(not acceptable) error" );
		String path = req.getSession().getServletContext().getRealPath("/arcticData")+"/ASC/CONCENT/" + typeId + ".json";
		
		JSONObject json_subtracted = new JSONObject();
		FileReader reader = null;
		
		try {
			// read the json file
			reader = new FileReader(path);

			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(reader);

			json_subtracted.put("someList",jsonObject);
			
		} catch (FileNotFoundException ex) {
			ex.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		} catch (ParseException ex) {
			ex.printStackTrace();
		} catch (NullPointerException ex) {
			ex.printStackTrace();
		}finally{
	            try {
	            	if(reader !=null)reader.close();
		        } catch (IOException e) {
	                e.printStackTrace();
		        }
        }
		
		TimeSeriesDataVO series = new TimeSeriesDataVO();
		JSONObject obj = new JSONObject();
		obj.put("ice", json_subtracted);
		series.setTypeId("haha");
		series.setData(obj);
		
		return series;
	}
	

	
	
}
