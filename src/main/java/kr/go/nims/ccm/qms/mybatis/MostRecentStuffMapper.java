package kr.go.nims.ccm.qms.mybatis;

import kr.go.nims.ccm.qms.domain.MostRecentStuffVO;

//@Resource(name="sqlSessionFactory")
public interface MostRecentStuffMapper {
	/**
	 * Level_1_A_VisibleSNR + VisibleRadiance
	 */
	MostRecentStuffVO seekLatestStuff(String id);
	
	/**
	 * Level_1_A_IR_Radiance_Statistics
	 */
	MostRecentStuffVO seekLatestStuff_IRRS(String id);
	
	/**
	 * Level_1_A_VisiblePRNU
	 */
	MostRecentStuffVO seekLatestStuff_VisPRNU(String id);
	
	/**
	 * Level_1_A_ IR PRNU
	 */
	MostRecentStuffVO seekLatestStuff_IRPRNU(String id);
	
	/**
	 * Level_1_A_ IR NEDT
	 */
	MostRecentStuffVO seekLatestStuff_IRNEDT(String id);
	
	/**
	 * Level_1_B 
	 * Number of Valid Landmarks + Residual Avg(EW/NS)
	 */
	MostRecentStuffVO seekLatestOne(String id);
}
