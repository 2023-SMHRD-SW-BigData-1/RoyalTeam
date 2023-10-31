// windy api
const options = {
    // Required: API key
    key: 'BYAVf6FAuDCtLxDkiuQYnDXSP4WNHuks', // REPLACE WITH YOUR KEY !!!

    // Put additional console output
    verbose: true,

    // Optional: Initial state of the map
    lat: 35.169803,
    lon: 126.801717,
    zoom: 5,
};

// Initialize Windy API
windyInit(options, windyAPI => {
    // windyAPI is ready, and contain 'map', 'store',
    // 'picker' and other usefull stuff

    const { map } = windyAPI;
    // .map is instance of Leaflet map

    L.popup()
        .setLatLng([35.15, 126.85])
        .setContent('광주광역시')
        .openOn(map);
});



