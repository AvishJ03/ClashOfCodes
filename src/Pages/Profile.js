import React, { useState } from "react";
import BarChart from "../Components/BarChart";
import { UserData } from "../Components/Data";
import LineChart from "../Components/LineChart";
import PieChart from "../Components/PieChart";
import Weather from "../Components/Weather";

const Profile = () => {
  const [userData, setUserData] = useState({
    labels: UserData.map((data) => data.month),
    datasets: [
      {
        label: "Amount spent today",
        data: UserData.map((data) => data.userLost),
      },
    ],
  });

  return (
    <div>
      <div className="grid grid-cols-2 ml-12">
        <div>
          <div className="content-center">
            <p className="bg-gray-100 p-3 my-16 w-[550px]">
              Amount spent during the past one week:
            </p>
          </div>
          <div className="w-[35rem] h-[25rem]">
            <BarChart chartData={userData} />
          </div>
        </div>

        <div>
          <div className="content-center">
            <p className="bg-gray-100 p-3 my-16 w-[550px]">
              Amount spent by you vs The Average of all the Travellers:
            </p>
          </div>
          <div className="w-[35rem] h-[25rem]">
            <LineChart chartData={userData} />
          </div>
        </div>

        <div>
          <div className="content-center">
            <p className="bg-gray-100 p-3 my-16 w-[550px]">
              Where did you spend your money?
            </p>
          </div>
          <div className="w-[35rem] h-[25rem]">
            <PieChart chartData={userData} />
          </div>
        </div>
        <div className="p-3 my-16">
          <Weather />
        </div>
      </div>
    </div>
  );
};

export default Profile;
