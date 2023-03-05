import React, { useRef, useState } from "react";
import { useNavigate } from "react-router";
import {
  useJsApiLoader,
  GoogleMap,
  MarkerF,
  MarkerClustererF,
  Autocomplete,
  DirectionsRenderer,
  InfoWindowF,
} from "@react-google-maps/api";
import stores from "./Stores";

const center = { lat: 19.11, lng: 72.84 };

const Maps = () => {
  const { isLoaded } = useJsApiLoader({
    googleMapsApiKey: "AIzaSyD9VI4OdMbtz9zNyDdGWL-Q9dM_qv_hW_4",
  });

  const [dirRes, setDirRes] = useState(null);
  const [isOpen, setisOpen] = useState(false);
  const [distance, setDistance] = useState("");
  const [duration, setDuration] = useState("");

  /** @type React.MutableRefObject<HTMLInputElement> */
  const originRef = useRef();
  /** @type React.MutableRefObject<HTMLInputElement> */
  const destRef = useRef();

  var count = 0;
  const navigate = useNavigate();

  function goToLogin() {
    count++;
    // if(count==3){
    //     navigate('/login')
    // }
  }

  async function calculate() {
    // eslint-disable-next-line no-undef
    const directService = new google.maps.DirectionsService();
    const results = await directService.route({
      origin: originRef.current.value,
      destination: destRef.current.value,
      // eslint-disable-next-line no-undef
      travelMode: google.maps.TravelMode.DRIVING,
    });

    setDirRes(results);
    setDistance(results.routes[0].legs[0].distance.text);
    setDuration(results.routes[0].legs[0].duration.text);
  }

  const locations = stores.results;

  const onLoad = (infoWindow) => {
    console.log("infoWindow: ", infoWindow);
  };

  if (isLoaded)
    return (
      <div className="h-[86.2vh] w-full ml-3" onClick={goToLogin}>
        <div className="p-10 bg-[#2b343b] text-white text-5xl pl-16 font-bold">
          Find Nearby Famous Places
        </div>
        {/* <div className="absolute w-5/12 my-5 ml-[30rem] bg-slate-100 p-7 rounded-md">
          <div className="flex">
            <Autocomplete>
              <input
                className="outline outline-2 p-2 rounded-md"
                type="text"
                placeholder="Origin"
                ref={originRef}
              />
            </Autocomplete>
            <Autocomplete>
              <input
                className="outline outline-2 mx-5 p-2 rounded-md"
                type="text"
                placeholder="Destination"
                ref={destRef}
              />
            </Autocomplete>
            <button
              className="bg-slate-500 px-5 py-2 ml-6 text-white rounded-md"
              onClick={calculate}
            >
              Show Route
            </button>
          </div>
          <div className="mt-4 text-lg flex">
            <div className="mr-36">Distance: {distance}</div>
            <div className="">Duration: {duration}</div>
          </div>
        </div> */}
        <div className="bg-slate-500 h-full w-full">
          <GoogleMap
            center={center}
            zoom={15}
            mapContainerStyle={{ width: "100%", height: "100%" }}
          >
            <MarkerClustererF>
              {(clusterer) => {
                return locations.map((location, idx) => {
                  return (
                    <MarkerF
                      key={idx}
                      position={location.geometry.location}
                      clusterer={clusterer}
                      onClick={() => setisOpen(idx)}
                    >
                      {isOpen === idx && (
                        <InfoWindowF onCloseClick={() => setisOpen(null)}>
                          <div className="w-48">
                            <div className="font-semibold my-2">
                              {location.name}
                            </div>
                            <div className="my-2">{location.vicinity}</div>
                            <div className="my-2 text-gray-500">
                              Rating: {location.rating}/5
                            </div>
                          </div>
                        </InfoWindowF>
                      )}
                    </MarkerF>
                  );
                });
              }}
            </MarkerClustererF>
            {dirRes && <DirectionsRenderer directions={dirRes} />}
          </GoogleMap>
        </div>
      </div>
    );
};

export default Maps;
