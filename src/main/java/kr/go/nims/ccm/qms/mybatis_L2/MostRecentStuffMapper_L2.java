package kr.go.nims.ccm.qms.mybatis_L2;

import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;

public interface MostRecentStuffMapper_L2 {
	
	MostRecentStuffVO seekLatestStuff_L2Daily(String id);
	
}
