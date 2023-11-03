package com.user.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.user.service.MapMarkerService;
import com.user.vo.MapMarker;

@RestController
@RequestMapping("/user/login/api")
public class MapMarkerController {

    @Autowired
    private MapMarkerService mapMarkerService;

    @GetMapping("/markers")
    public List<MapMarker> getMarkers() {
        return mapMarkerService.getAllMarkers();
    }
    
    
	
}
