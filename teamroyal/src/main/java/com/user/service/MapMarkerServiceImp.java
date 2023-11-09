package com.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.MapMarkerDao;
import com.user.vo.MapMarker;

@Service
public class MapMarkerServiceImp implements MapMarkerService {
	@Autowired
    private MapMarkerDao mapMarkerDao;

    @Override
    public List<MapMarker> getAllMarkers() {
        return mapMarkerDao.getAllMarkers();
    }
}
