package net.daum.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ComunityDAOImpl implements ComunityDAO {
	@Autowired
	private SqlSession sqlSession;
}
