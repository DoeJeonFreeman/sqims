package kr.go.nims.ccm.qms.dao_L2;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.nims.ccm.qms.mybatis_L2.TimeSeriesDataMapper_L2;


/**
 * @author Administrator
 *
 */

@Repository
public class TimeSeriesDataDAOService_L2  implements TimeSeriesDataDAO_L2{

	@Autowired 
	private SqlSession  sqlSession2;

//	private static final SimpleDateFormat CAL_DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_CLA(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_CLA(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_CLD(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_CLD(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_FOG(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_FOG(hashmap);
	}

	@Override
	public ArrayList<HashMap<String, Object>> selectTimeSeriesData_L2_AI(HashMap<String, String> hashmap) {
		TimeSeriesDataMapper_L2 dataMapper = sqlSession2.getMapper(TimeSeriesDataMapper_L2.class);
		return dataMapper.selectTimeSeriesData_L2_AI(hashmap);
	}

}
