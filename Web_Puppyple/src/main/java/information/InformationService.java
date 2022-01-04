package information;

import java.util.HashMap;
import java.util.List;



public interface InformationService {
	// CRUD (Create, Read, Update, Delete)
	
	void information_insert(InformationVO vo);	// 공지글 신규 저장 (C)
	InformationPage information_list(InformationPage page); // 공지글 목록조회 - 페이지 처리된 목록 (R)
	InformationVO information_detail(HashMap<String, String> map);			// 공지글 상세 조회 (R)
	void information_update(InformationVO vo);	// 공지글 변경 저장 (U)
	void information_delete(int id);			// 공지글 삭제 (D)
	void information_read(int id);			// 공지글 조회시 조회수 증가 처리 (U)
	
	int information_comment_insert(InformationCommentVO vo); // 방명록 댓글 신규 저장 처리
	int information_comment_update(InformationCommentVO vo); // 방명록 댓글 변경 저장 처리
	void information_comment_delete(int id);	// 방명록 댓글 삭제 처리
	List<InformationCommentVO> information_comment_list(int pid);	// 방명록 댓글 목록 조회
								// pid : 원글의 id
}
