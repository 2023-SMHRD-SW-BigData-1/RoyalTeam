package com.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.user.vo.MapMarker;

@Repository
public class MapMarkerDaoImp implements MapMarkerDao {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<MapMarker> getAllMarkers() {
        return sqlSession.selectList("com.user.dao.UserDAO.getAllMarkers");
    }
}
