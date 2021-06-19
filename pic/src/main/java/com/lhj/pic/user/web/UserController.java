package com.lhj.pic.user.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lhj.pic.tourist.vo.TouristVO;
import com.lhj.pic.user.service.UserService;
import com.lhj.pic.user.vo.UserVO;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value = "/user/selectUserMyPageList.do")
	public String selectUserList(@ModelAttribute("touristVO")TouristVO touristVO, Model model, HttpSession session) throws Exception{
		try{
			UserVO tempVO = (UserVO)session.getAttribute("userVO");
			
			touristVO.setUser_name(tempVO.getUser_name());
			touristVO.setUser_idx(tempVO.getUser_idx());
			
			List<TouristVO> resultList = userService.selectUserMyPageList(touristVO);
			
			model.addAttribute("resultList", resultList);
			model.addAttribute("id", tempVO.getId());
		}catch(Exception e){
			logger.error("Exception UserController selectUserList");
		}
		
		return "user/userMyPageList";
	}
	
	@RequestMapping(value = "/user/fwdUserJoin.do")
	public String fwdUserJoin(Model model) {
		
		return "/user/userJoin";
	}
	
	@RequestMapping(value = "/user/insertUser.do")
	public String insertUser(@ModelAttribute("UserVO")UserVO userVO, Model model) {
		try {
			userService.insertUser(userVO);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "forward:/tourist/selectTouristList.do";
	}
	
	@RequestMapping(value = "/index.do")
	public String index(@ModelAttribute("UserVO")UserVO userVO, Model model) {
		model.addAttribute("id", userVO.getId());
		
		return "forward:/tourist/selectTouristList.do";
	}
	
	@RequestMapping(value = "/user/login.do")
	public String login(Model model) {
		
		return "/user/login";
	}
	
	@RequestMapping(value = "/user/loginCheck.do")
	@ResponseBody
	public String loginCheck(@ModelAttribute("UserVO")UserVO userVO, Model model, HttpSession session) {
		String result = "N";
		try {
			UserVO loginUserVO = userService.selectUser(userVO);
			if(loginUserVO != null) {
				result = "Y";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping(value = "/user/selectUserDuplicationCheck.do")
	@ResponseBody
	public String selectUserDuplicationCheck(@ModelAttribute("UserVO")UserVO userVO, Model model, HttpSession session) {
		String result = "N";
		try {
			int resultCnt = userService.selectUserDuplicationCheck(userVO);
			if(resultCnt > 0) {
				result = "Y";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping(value = "/user/loginProc.do")
	public String loginProc(@ModelAttribute("UserVO")UserVO userVO, Model model, HttpSession session) {
		try {
			UserVO loginUserVO = userService.selectUser(userVO);
				
			session.setAttribute("userVO", loginUserVO);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "forward:/tourist/selectTouristList.do";
	}
	
	
	@RequestMapping(value = "/user/logout.do")
	public String logout(@ModelAttribute("UserVO")UserVO userVO, HttpSession session) {
		session.invalidate();
		
		return "forward:/tourist/selectTouristList.do";
	}
	
}
