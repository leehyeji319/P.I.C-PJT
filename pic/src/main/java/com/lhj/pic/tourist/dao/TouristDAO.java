package com.lhj.pic.tourist.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lhj.pic.config.AbstractDAO;
import com.lhj.pic.tourist.vo.TouristVO;

@Repository("touristDAO")
public class TouristDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<TouristVO> selectTouristList(TouristVO touristVO) throws Exception {
		return (List)selectList("tourist.selectTouristList", touristVO);
	}
	
	public void insertTouristPICHistory(TouristVO touristVO) throws Exception{
		insert("tourist.insertTouristPICHistory", touristVO);
	}
	
	public void deleteTouristPICHistory(TouristVO touristVO) throws Exception{
		delete("tourist.deleteTouristPICHistory", touristVO);
	}
	
}
