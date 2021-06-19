package com.lhj.pic.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lhj.pic.config.AbstractDAO;
import com.lhj.pic.tourist.vo.TouristVO;
import com.lhj.pic.user.vo.UserVO;

@Repository("userDAO")
public class UserDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<TouristVO> selectUserMyPageList(TouristVO touristVO) throws Exception {
		return (List)selectList("user.selectUserMyPageList", touristVO);
	}
	
	public void insertUser(UserVO userVO) throws Exception{
		insert("user.insertUser", userVO);
	}
	
	public UserVO selectUser(UserVO userVO) throws Exception {
		return (UserVO) selectOne("user.selectUser", userVO);
	}
	
	public int selectUserDuplicationCheck(UserVO userVO) throws Exception {
		return (Integer) selectOne("user.selectUserDuplicationCheck", userVO);
	}
}