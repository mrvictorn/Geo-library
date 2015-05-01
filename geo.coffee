class Geo 
  # @fromPoint, @toPoint have to be google.maps.LatLng objects
  getDistanceBetweenLatLng: (fromPoint, toPoint) -> 
    radlat1 = Math.PI * fromPoint.lat() / 180
    radlat2 = Math.PI * toPoint.lat() / 180
    radlon1 = Math.PI * fromPoint.lng() / 180
    radlon2 = Math.PI * toPoint.lng() / 180
    theta = fromPoint.lng() - toPoint.lng()
    radtheta = Math.PI * theta / 180
    dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
    dist = Math.acos dist 
    dist = dist * 180 / Math.PI
    dist = dist * 60 * 1.1515
    dist = dist * 1609.344 # from miles to meters  
    return Math.round dist
  # @fromPoint, @toPoint have to contain {lat:,lng:} literal objects
  getDistanceBetweenPoints: (fromPoint, toPoint) -> 
    radlat1 = Math.PI * fromPoint.lat / 180
    radlat2 = Math.PI * toPoint.lat / 180
    radlon1 = Math.PI * fromPoint.lng / 180
    radlon2 = Math.PI * toPoint.lng / 180
    theta = fromPoint.lng - toPoint.lng
    radtheta = Math.PI * theta / 180
    dist = Math.sin(radlat1) * Math.sin(radlat2) + Math.cos(radlat1) * Math.cos(radlat2) * Math.cos(radtheta);
    dist = Math.acos dist 
    dist = dist * 180 / Math.PI
    dist = dist * 60 * 1.1515
    dist = dist * 1609.344 # from miles to meters  
    return Math.round dist

@geo = new Geo