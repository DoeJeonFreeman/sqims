package kr.go.nims.ccm.qms.dao_L2;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;
import kr.go.nims.ccm.qms.mybatis_L2.MostRecentStuffMapper_L2;


/**
 * @author Administrator
 *
 */
@Repository
public class MostRecentStuffDAOService_L2  implements MostRecentStuffDAO_L2{

	@Autowired 
	private SqlSession  sqlSession2;


	@Override
	public MostRecentStuffVO seekLatestStuff_L2Daily(String id) {
		MostRecentStuffMapper_L2 up2dateMapper = sqlSession2.getMapper(MostRecentStuffMapper_L2.class);
		return up2dateMapper.seekLatestStuff_L2Daily(id);
	}


	
	

}
