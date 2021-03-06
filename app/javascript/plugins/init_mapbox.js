import mapboxgl from 'mapbox-gl';

const initMapbox = () => {

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };

  const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // <-- add this
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '35px';
      element.style.height = '35px';

      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
  }

  const addIsochroneToMap = (map, polygon) => {
    map.on('load', function () {
        map.addLayer({
            'id': 'maine',
            'type': 'fill',
            'source': {
                'type': 'geojson',
                'data': {
                    'type': 'Feature',
                    'geometry': {
                        'type': 'Polygon',
                        'coordinates': [polygon]
                    }
                }
            },
            'layout': {},
            'paint': {
                'fill-color': '#26A69A',
                'fill-opacity': 0.5
            }
        });
    });
  }


  ////////// Flow //////////

  const mapElement = document.getElementById('map');

  if (mapElement == null) {return ;} // only build a map if there's a div#map to inject into

  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });

  const markers = JSON.parse(mapElement.dataset.markers);
  const polygon = JSON.parse(mapElement.dataset.polygon);

  addMarkersToMap(map, markers);
  fitMapToMarkers(map, markers);

  // Add zoom and rotation controls to the map.
  map.addControl(new mapboxgl.NavigationControl());

  // Add isochrone polygon
  if (polygon == null) {return};
  addIsochroneToMap(map, polygon);
};

export { initMapbox };
