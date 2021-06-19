package com.lhj.pic.tourist.service;

import java.util.List;

import com.lhj.pic.tourist.vo.TouristVO;

public interface TouristService {
	
	public List<TouristVO> selectTouristList(TouristVO touristVO) throws Exception;
	
	public void updateTouristPIC(TouristVO touristVO) throws Exception;
	
}
