package kr.go.nims.ccm.qms.dao;

import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;

/**
 * 2016.12.24.
 * 기존 현업은 DAO pattern 대신 서비스-서비스Impl로 구현하였음.
 * multiple datasource 사용 테스트 위해 DAO 삽입. 
 * */
public interface MostRecentStuffDAO {
	public MostRecentStuffVO seekLatestStuff(String id);
	
	public MostRecentStuffVO seekLatestStuff_IRRS(String id);
	
	public MostRecentStuffVO seekLatestStuff_VisPRNU(String id);
	
	public MostRecentStuffVO seekLatestStuff_IRPRNU(String id);
	
	public MostRecentStuffVO seekLatestStuff_IRNEDT(String id);
	
	public MostRecentStuffVO seekLatestOne(String id);
}
