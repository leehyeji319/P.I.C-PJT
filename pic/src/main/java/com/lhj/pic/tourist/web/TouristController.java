package com.lhj.pic.tourist.web;

import java.rmi.server.UID;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lhj.pic.tourist.service.TouristService;
import com.lhj.pic.tourist.vo.TouristVO;
import com.lhj.pic.user.vo.UserVO;


@Controller
public class TouristController {
	
	private static final Logger logger = LoggerFactory.getLogger(TouristController.class);

	@Resource(name="touristService")
	private TouristService touristService;
	
	@RequestMapping(value = "/tourist/selectTouristList.do")
	public String selectTouristList(@ModelAttribute("touristVO")TouristVO touristVO, Model model, HttpSession session) throws Exception{
		try{
			System.out.println(UUID.randomUUID());
			UserVO userVO = (UserVO)session.getAttribute("userVO");
			
			if(userVO != null) {
				touristVO.setUser_name(userVO.getUser_name());
				touristVO.setUser_idx(userVO.getUser_idx());
				
				model.addAttribute("id", userVO.getId());
			}
			
			List<TouristVO> touristList = touristService.selectTouristList(touristVO);
			
			model.addAttribute("touristList", touristList);
		}catch(Exception e){
			logger.error("Exception TouristController selectTouristList");
			e.printStackTrace();
		}
		
		return "tourist/touristList";
	}
	
	@RequestMapping(value = "/tourist/updateTouristPIC.do")
	@ResponseBody
	public void updateTouristPIC(@ModelAttribute("touristVO")TouristVO touristVO, Model model, HttpSession session) throws Exception{
		try{
			touristService.updateTouristPIC(touristVO);
		}catch(Exception e){
			logger.error("Exception TouristController updateTouristPIC");
			e.printStackTrace();
		}
	}
}
