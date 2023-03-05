import React from "react";
import TravelCard from "../components/TravelCard/TravelCard";
import user1 from "../Assets/user1.png";
import user2 from "../Assets/user2.png";
import user3 from "../Assets/user3.png";
import user4 from "../Assets/user4.png";
const TravelBudddy = () => {
  return (
    <div>
      <div className="text-6xl font-bold text-center py-8">
        Recommended Travel Buddy!
      </div>
      <div className="grid xl:grid-cols-4 lg:grid-cols-3 sm:grid-cols-1 md:grid-cols-2 m-8">
        <TravelCard
          img={user1}
          start="15-03-2023"
          end="18-03-2023"
          name="User 1"
          location="Banglore"
        />
        <TravelCard
          img={user2}
          start="14-03-2023"
          end="19-03-2023"
          name="User 2"
          location="Mumbai"
        />
        <TravelCard
          img={user3}
          start="14-03-2023"
          end="19-03-2023"
          name="User 3"
          location="Mumbai"
        />
        <TravelCard
          img={user4}
          start="14-03-2023"
          end="19-03-2023"
          name="User 4"
          location="Mumbai"
        />
      </div>
    </div>
  );
};

export default TravelBudddy;
