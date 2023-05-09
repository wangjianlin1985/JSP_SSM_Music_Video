package controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 		* @author : lingQiCheng
 		* @Description : TODO 
 		* @CreateDate : 2020年02月11日 上午8:33:47 
 		* @lastModified : 2020年02月11日 上午8:33:47 
 		* 
 	*/  
@Controller
public class TestContoller {
	private Logger logger = Logger.getLogger(TestContoller.class);
	@RequestMapping("/*")
	public String doForward(HttpServletRequest request){
		String servletPath = request.getServletPath();
		String url = servletPath.replace(".html", "");
		return url;
	}

}
