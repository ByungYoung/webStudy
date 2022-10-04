package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.SqlSessionManager;

public class DAO {
	// 1) SqlSessionFactory 만들기
	// -> sqlSession : sql구문을 실행, 종료할 수 있게 해주는 도구
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSessionFactory();

	// 2) 데이터베이스의 기능 정의
	public int join(AiMember vo) {
		// 3) sqlSession 만들기
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// openSession(true) : Auto commit ( insert, delete, update )
		
		// 4) session을 활용해서 mapper안의 기능을 수행
		// sqlSession.insert(mapper파일의 식별자.sql문의 id,mapper 파일에 보내줄 데이터)
		int row = sqlSession.insert("model.DAO.join", vo);
		return row;
	}
	
	public AiMember login(AiMember vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		AiMember resultVO = sqlSession.selectOne("model.DAO.login", vo);
		return resultVO;
	}
}