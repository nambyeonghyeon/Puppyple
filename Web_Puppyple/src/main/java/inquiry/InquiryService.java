package inquiry;

import java.util.HashMap;
import java.util.List;

public interface InquiryService {
	// CRUD (Create, Read, Update, Delete)
	
	void inquiry_insert(InquiryVO vo);	// 공지글 신규 저장 (C)
	InquiryPage inquiry_list(InquiryPage page); // 공지글 목록조회 - 페이지 처리된 목록 (R)
	InquiryVO inquiry_detail(HashMap<String, String> map);			// 공지글 상세 조회 (R)
	void inquiry_update(InquiryVO vo);	// 공지글 변경 저장 (U)
	void inquiry_delete(int id);			// 공지글 삭제 (D)
	
	int inquiry_comment_insert(InquiryCommentVO vo); // 방명록 댓글 신규 저장 처리
	int inquiry_comment_update(InquiryCommentVO vo); // 방명록 댓글 변경 저장 처리
	void inquiry_comment_delete(int id);	// 방명록 댓글 삭제 처리
	List<InquiryCommentVO> inquiry_comment_list(int pid);	// 방명록 댓글 목록 조회
								// pid : 원글의 id
}
