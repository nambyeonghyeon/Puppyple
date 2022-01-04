package trade;

import java.util.HashMap;
import java.util.List;


public interface TradeService {
	// CRUD (Create, Read, Update, Delete)
	
	void trade_insert(TradeVO vo);	// 공지글 신규 저장 (C)
	TradePage trade_list(TradePage page); // 공지글 목록조회 - 페이지 처리된 목록 (R)
	TradeVO trade_detail(HashMap<String, String> map);			// 공지글 상세 조회 (R)
	void trade_update(TradeVO vo);	// 공지글 변경 저장 (U)
	void trade_delete(int id);			// 공지글 삭제 (D)
	void trade_read(int id);			// 공지글 조회시 조회수 증가 처리 (U)
	
	int trade_comment_insert(TradeCommentVO vo); // 방명록 댓글 신규 저장 처리
	int trade_comment_update(TradeCommentVO vo); // 방명록 댓글 변경 저장 처리
	void trade_comment_delete(int id);	// 방명록 댓글 삭제 처리
	List<TradeCommentVO> trade_comment_list(int pid);	// 방명록 댓글 목록 조회
								// pid : 원글의 id
}
