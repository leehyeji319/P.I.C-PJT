package com.lhj.pic.user.service;

import java.util.List;

import com.lhj.pic.tourist.vo.TouristVO;
import com.lhj.pic.user.vo.UserVO;

public interface UserService {

	public List<TouristVO> selectUserMyPageList(TouristVO touristVO) throws Exception;
	
	public UserVO selectUser(UserVO userVO) throws Exception;
	
	public void insertUser(UserVO userVO) throws Exception;
	
	public int selectUserDuplicationCheck(UserVO userVO) throws Exception;
}
