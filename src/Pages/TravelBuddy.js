import React, { useEffect, useState } from "react";
import TravelCard from "../Components/TravelCard/TravelCard";
import user1 from "../Assets/user1.png";
import user2 from "../Assets/user2.png";
import user3 from "../Assets/user3.png";
import user4 from "../Assets/user4.png";
import axios from "axios";
const TravelBudddy = () => {
  const [recommendations, setRecommendations] = useState([]);
  const [details, setDetails] = useState([]);
  const [locations, setLocations] = useState([]);

  useEffect(() => {
    async function getrecommendations() {
      const res = await axios.post(
        "http://localhost:5000/recommendSimilar",
        {
          planID: "64038509b85cc877e89d1924",
        },
        {
          headers: {
            "auth-token": localStorage.getItem("token"),
          },
        }
      );
      console.log("res", res.data);
      setRecommendations(res.data.recommended);
      setDetails(res.data.details);
    }
    getrecommendations();
  }, []);

  useEffect(() => {
    async function getLocation(rec) {
      const locs = [];
      rec.forEach(async (element) => {
        const { data } = await axios.get(
          "http://localhost:5000/getDestination/" + element.destinationID
        );
        // console.log(data.destination);
        const loc =
          data.destination.placename + ", " + data.destination.country;
        locs.push(loc);
      });
      // console.log(locs);
      setLocations(locs);
    }
    getLocation(recommendations);
  }, [recommendations]);

  // useEffect(() => {}, [locations]);

  return (
    <div>
      <div className="text-6xl font-bold text-center py-8">
        Recommended Travel Buddy!
      </div>
      <div className="grid xl:grid-cols-4 lg:grid-cols-3 sm:grid-cols-1 md:grid-cols-2 m-8">
        {locations &&
          recommendations.map((recommend, idx) => {
            // console.log(locations.idx);
            return (
              <TravelCard
                key={idx}
                img={user1}
                start="15-03-2023"
                end="18-03-2023"
                name="User 1"
                location={locations[0]}
              />
            );
          })}
      </div>
    </div>
  );
};

export default TravelBudddy;
