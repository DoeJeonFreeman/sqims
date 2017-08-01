package kr.go.nims.ccm.qms.dao_L2;

import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;

/**
 * 2016.12.24.
 * 기존 현업은 DAO pattern 대신 서비스-서비스Impl로 구현하였음.
 * multiple datasource 사용 테스트 위해 DAO 삽입. 
 * */
public interface MostRecentStuffDAO_L2 {
	
	public MostRecentStuffVO seekLatestStuff_L2Daily(String id);
}
