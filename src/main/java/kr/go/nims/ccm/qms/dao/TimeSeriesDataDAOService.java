package kr.go.nims.ccm.qms.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.nims.ccm.qms.mybatis.TimeSeriesDataMapper;


/**
 * @author Administrator
 *
 */

@Repository
public class TimeSeriesDataDAOService  implements TimeSeriesDataDAO{

	@Autowired 
	private SqlSession  sqlSession;

//	private static final SimpleDateFormat CAL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectCRDSData_L1(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectCRDSData_L1(hashmap);
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> selectNEPHELOData_L1(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectNEPHELOData_L1(hashmap);
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> selectOPCPMXData_L1(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectOPCPMXData_L1(hashmap);
	}
	
	@Override
	public ArrayList<HashMap<String, Object>> selectAPSMData_L1(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectAPSMData_L1(hashmap);
	}

	
	
	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_VSNR(HashMap<String, String> hashmap) {
//		HashMap<String, String> hashmap = new HashMap<String, String>();
//		hashmap.put("targetDate", targetDate);
//		hashmap.put("dBegin", period);
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_VSNR_Alternative(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_VSNR_Alternative(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_VSNR_Alternative(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_VR(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_VR(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRRS(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_IRRS(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_VisPRNU(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_VisPRNU(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRPRNU(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_IRPRNU(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1A_IRNEDT(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1A_IRNEDT(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectEnvData_L1A(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectEnvData_L1A(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1B_NVL(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1B_NVL(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1B_RAVG(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1B_RAVG(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1B_STDDEV(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1B_STDDEV(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1B_QUADDIST(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1B_QUADDIST(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1B_SCPOS(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1B_SCPOS(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L1B_SCATT(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper dataMapper = sqlSession.getMapper(TimeSeriesDataMapper.class);
		return dataMapper.selectTimeSeriesData_L1B_SCATT(hashmap);
	}


	
	



}
