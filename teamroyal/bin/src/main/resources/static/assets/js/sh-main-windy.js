// windy api
const windyOptions = {
  // Required: API key
    key: 'BYAVf6FAuDCtLxDkiuQYnDXSP4WNHuks', // REPLACE WITH YOUR KEY !!!
    
    // Put additional console output
    verbose: true,
    
    // Optional: Initial state of the map
    lat: 35.160717,
    lon: 126.881989,
    zoom: 5,
  };

  const windyCont = windyInit(options, windyAPI => {
    // windyAPI는 준비됐으며 'map', 'store', 'picker' 및 다른 유용한 것들을 포함합니다.
    const { map } = windyAPI;

    // 마커에 사용할 사용자 정의 아이콘 생성
    const customIcon = L.icon({
      iconUrl: 'https://cdn-icons-png.flaticon.com/512/6849/6849303.png',
      iconSize: [30, 30],
    });

    // 마커 옵션 정의
    const markerOptions = { title: "myPoint", icon: customIcon };

    // AJAX 요청을 수행하여 마커 좌표를 가져옵니다
    // 실제 데이터에 대한 URL로 대체하세요.
$.ajax({
  url: '/user/login/api/markers',
  method: 'GET',
  dataType: 'json',
  success: function(data) {
    console.log(data);

    data.forEach(function(markerData) {
      // 각 객체에서 위도와 경도를 추출
      const lat = markerData.latitude;
      const lon = markerData.longitude;

	      console.log('Latitude:', lat, 'Longitude:', lon);
	

      // 가져온 좌표를 사용하여 마커를 만들고 지도에 추가
      const marker = new L.Marker([lon, lat], markerOptions).addTo(map);
    });
  },
  error: function(error) {
    console.error('마커 데이터를 가져오지 못했습니다:', error);
  },
});
});



