package service;

import java.util.List;

import entity.*;

/** 
 		* @author : huangYingZhu
 		* @Description : TODO 
 		* @CreateDate : 2020年02月13日 下午3:52:17 
 		* @lastModified : 2020年02月13日 下午3:52:17 
 		* 
 	*/  
public interface videoService {

	public List<Video> GetList();
	public PageModel<Video> GetPageList(int pageno);
	public Video GetDetai(int videoId);
	public List<Video> GetEventList();
	public boolean addMes(Message mes);
	public List<Message> GetMes(int vid);
}
