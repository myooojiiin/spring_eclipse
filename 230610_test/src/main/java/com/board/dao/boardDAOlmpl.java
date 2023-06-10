package com.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.board.domain.BoardVO;

@Repository
public class boardDAOlmpl implements boardDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static String namespace = "com.board.mappers.boardMapper";
	
	// 게시물 목록
	@Override
	public List<BoardVO> list() {
		return sqlSession.selectList(namespace + ".list");
	}

}
