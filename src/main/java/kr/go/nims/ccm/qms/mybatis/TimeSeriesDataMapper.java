package kr.go.nims.ccm.qms.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import kr.go.nims.ccm.qms.domain.MannualFlaggingVO;

public interface TimeSeriesDataMapper {
    
	 ArrayList<HashMap<String,Object>> selectNEPHELOData_L1(HashMap<String, String> hashmap);
//	 void updateNEPHELOData_L1_MF_S1(HashMap<String, Object> hashmap);
	 void updateNEPHELOData_L1_MF_S1(MannualFlaggingVO mfvo);
	 
	 ArrayList<HashMap<String,Object>> selectOPCPMXData_L1(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectAPSMData_L1(HashMap<String, String> hashmap);
	 
	 ArrayList<HashMap<String,Object>> selectCRDSData_L1(HashMap<String, String> hashmap);
	 
	 
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_VSNR(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_VSNR_Alternative(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1A_VR(HashMap<String, String> hashmap);
	 
	 ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRRS(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_VisPRNU(HashMap<String, String> hashmap);
	 
	 ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRPRNU(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRNEDT(HashMap<String, String> hashmap);
	 
	 ArrayList<HashMap<String, Object>> selectEnvData_L1A(HashMap<String, String> hashmap);
	 
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_NVL(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_RAVG(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_STDDEV(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_QUADDIST(HashMap<String, String> hashmap);
	 
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_SCPOS(HashMap<String, String> hashmap);
	 ArrayList<HashMap<String,Object>> selectTimeSeriesData_L1B_SCATT(HashMap<String, String> hashmap);
	 

    
}
