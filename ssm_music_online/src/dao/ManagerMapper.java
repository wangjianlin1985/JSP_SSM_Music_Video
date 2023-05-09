package dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import entity.Music;
import entity.User;
import entity.Video;


/** 
 		* @author : admin
 		* @Description : TODO 
 		* @CreateDate : 2020年02月14日 上午10:52:59 
 		* @lastModified : 2020年02月14日 上午10:52:59 
 		* 
 	*/  
public interface ManagerMapper {
    
    int selectMusicTypeIdByName(@Param("musicTypeName")String musicTypeName);
    
    String selectSingerTypeIdByName(@Param("singerTypeIdByName")String singerTypeIdByName);
    
    Integer insertMusic(Music music);
    
    Integer insertSinger(@Param("singerName")String singerName);
    
    List<Map<String,Object>> getAllUser();
    
    List<Map<String,Object>> getAllVideo();
    
    Integer editMuisc(Music music);
    
    Integer deleteUser(@Param("userId")int userId);
    
    Integer insertUser(User user);
    
    Integer editUser(User user);
    
    
    Integer deleteVideo(@Param("videoId")int videoId);
    
    Integer insertVideo(Video user);
    
    Integer editVideo(Video user);
    
    List<Map<String, Object>> selectAllSong();
}
