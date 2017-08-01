package kr.go.nims.ccm.qms.dao_L2;

import java.util.ArrayList;
import java.util.HashMap;

public interface TimeSeriesDataDAO_L2 {
	
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_CLA(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_CLD(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_FOG(HashMap<String, String> hashmap);
	 public ArrayList<HashMap<String,Object>> selectTimeSeriesData_L2_AI (HashMap<String, String> hashmap);
	 
}	 