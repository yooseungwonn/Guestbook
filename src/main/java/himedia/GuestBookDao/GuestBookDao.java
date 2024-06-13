package himedia.GuestBookDao;

import java.util.List;



public interface GuestBookDao {
	List<GuestVo> getList();
	GuestVo get(Long no);
	boolean insert(GuestVo vo);
	boolean delete(GuestVo vo);
//	public List<GuestVo> getList(); 	// emaillist table SELECT
//	public boolean insert(GuestVo vo);	// emaillist table INSERT
//	public boolean delete(int no, String password);
}