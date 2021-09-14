package net.daum.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.daum.vo.PayedVO;

@Repository
public class PayedDAOImpl implements PayedDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PayedVO> getPayed(PayedVO pd) {
		// TODO Auto-generated method stub
		return this.sqlSession.selectList("pd_getPay",pd);
	}

	@Override
	public void insertPayed(String ui) {
		// TODO Auto-generated method stub
		this.sqlSession.insert("pd_insert", ui);
	}

	@Override
	public void updatePayed(PayedVO pd) {
		// TODO Auto-generated method stub
		this.sqlSession.update("pd_update", pd);
	}

}
