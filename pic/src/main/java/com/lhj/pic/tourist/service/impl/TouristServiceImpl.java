package com.lhj.pic.tourist.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lhj.pic.tourist.dao.TouristDAO;
import com.lhj.pic.tourist.service.TouristService;
import com.lhj.pic.tourist.vo.TouristVO;

@Service("touristService")
public class TouristServiceImpl implements TouristService{
	
	@Resource(name="touristDAO")
	private TouristDAO touristDAO;

	@Override
	public List<TouristVO> selectTouristList(TouristVO touristVO) throws Exception {
		
		// TODO Auto-generated method stub
		return touristDAO.selectTouristList(touristVO);
	}

	@Override
	public void updateTouristPIC(TouristVO touristVO) throws Exception {
		// TODO Auto-generated method stub
		if("Y".equals(touristVO.getPic_yn())) {
			touristDAO.insertTouristPICHistory(touristVO);
		}else if("N".equals(touristVO.getPic_yn())) {
			touristDAO.deleteTouristPICHistory(touristVO);
		}
	}
	
}
