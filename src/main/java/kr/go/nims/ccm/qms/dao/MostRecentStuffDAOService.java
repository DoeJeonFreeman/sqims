package kr.go.nims.ccm.qms.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;
import kr.go.nims.ccm.qms.mybatis.MostRecentStuffMapper;


/**
 * @author Administrator
 *
 */
@Repository
public class MostRecentStuffDAOService  implements MostRecentStuffDAO{

	@Autowired 
	private SqlSession  sqlSession;

	
	@Override
	public MostRecentStuffVO seekLatestStuff(String id) {
		MostRecentStuffMapper up2dateMapper = sqlSession.getMapper(MostRecentStuffMapper.class);
		return up2dateMapper.seekLatestStuff(id);
	}

	@Override
	public MostRecentStuffVO seekLatestStuff_IRRS(String id) {
		MostRecentStuffMapper up2dateMapper = sqlSession.getMapper(MostRecentStuffMapper.class);
		return up2dateMapper.seekLatestStuff_IRRS(id);
	}

	@Override
	public MostRecentStuffVO seekLatestStuff_VisPRNU(String id) {
		MostRecentStuffMapper up2dateMapper = sqlSession.getMapper(MostRecentStuffMapper.class);
		return up2dateMapper.seekLatestStuff_VisPRNU(id);
	}

	@Override
	public MostRecentStuffVO seekLatestStuff_IRPRNU(String id) {
		MostRecentStuffMapper up2dateMapper = sqlSession.getMapper(MostRecentStuffMapper.class);
		return up2dateMapper.seekLatestStuff_IRPRNU(id);
	}

	@Override
	public MostRecentStuffVO seekLatestStuff_IRNEDT(String id) {
		MostRecentStuffMapper up2dateMapper = sqlSession.getMapper(MostRecentStuffMapper.class);
		return up2dateMapper.seekLatestStuff_IRNEDT(id);

	}

	@Override
	public MostRecentStuffVO seekLatestOne(String id) {
		MostRecentStuffMapper up2dateMapper = sqlSession.getMapper(MostRecentStuffMapper.class);
		return up2dateMapper.seekLatestOne(id);
	}
	
	

}
