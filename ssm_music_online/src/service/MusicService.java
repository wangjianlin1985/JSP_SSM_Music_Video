package service;

import java.util.List;
import java.util.Map;

import entity.Music;

/** 
 		* @author : admin
 		* @Description : TODO 
 		* @CreateDate : 2020年02月11日 上午9:11:07 
 		* @lastModified : 2020年02月11日 上午9:11:07 
 		* 
 	*/  
public interface MusicService {
	public List<Map<String, Object>> selectRodomMusics();
	public List<Map<String, Object>> selectNewSongs();
	
	public List<Map<String, Object>> selectTopSongs();
    
	public List<Map<String, Object>> selectTopSinger();
	
	public List<Map<String, Object>> selectAllSong();
	
	public boolean deletMusicById(int musicId);
	
	public boolean insertMusic(Music music);
}
