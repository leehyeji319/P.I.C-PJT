package com.lhj.pic.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lhj.pic.tourist.vo.TouristVO;
import com.lhj.pic.user.dao.UserDAO;
import com.lhj.pic.user.service.UserService;
import com.lhj.pic.user.vo.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDAO")
	private UserDAO userDAO;

	@Override
	public List<TouristVO> selectUserMyPageList(TouristVO touristVO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.selectUserMyPageList(touristVO);
	}

	@Override
	public UserVO selectUser(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.selectUser(userVO);
	}

	@Override
	public int selectUserDuplicationCheck(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return userDAO.selectUserDuplicationCheck(userVO);
	}
	
	@Override
	public void insertUser(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		userDAO.insertUser(userVO);
	}
	
}
