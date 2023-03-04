import React, { useState } from "react";
// import { useNavigate } from "react-router-dom";
import axios from "axios";
import plane from "../Assets/plane.png";
import world from "../Assets/world.png";
import clouds from "../Assets/clouds.png";

const Login = () => {
  // const navigate = useNavigate();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [role, setRole] = useState("");

  const url = "http://localhost:5000/";

  const loginUser = async (e) => {
    e.preventDefault();
    try {
      console.log(url + `login${role}`);
      console.log(email, password);
      const res = await axios.post(url + `login${role}`, { email, password });
      console.log(res);
      const token = res.data.authToken;
      console.log(token);
      localStorage.setItem("token", token);
      localStorage.setItem("chat-app-user", JSON.stringify(res.data.user));
      localStorage.setItem("userType", role);
      if (role === "user") {
        // navigate("/homeuser");
        console.log("homeuser");
      } else if (role === "guide") {
        // navigate("/guide");
        console.log("guide");
      }
    } catch (err) {
      setEmail("");
      setPassword("");
      alert("Error occured while logging in");
      console.log(err);
    }
  };

  return (
    <div className="h-screen formClass overflow-y-hidden bg-[#C8EFF4]">
      <div className="flex">
        <div className="w-1/2 overflow-y-hidden">
          <img
            src={world}
            alt="alternate"
            className="w-auto ml-24 mr-8 -translate-y-24 h-4/5"
          />
        </div>
        <div className="flex-1 h-screen w-50% justify-center content-center ml-12 z-10">
          <div className="flex flex-col w-full h-screen justify-center content-center">
            <div className="ml-4 w-[500px] bg-white h-[550px] my-auto rounded-3xl shadow-primary-sd justify-center content-center text-left overflow-y-hidden">
              <div className="p-10 ml-5 ">
                <p className="font-ourfont font-bold text-3xl overflow-y-hidden mt-11 text-primary-black">
                  Log In
                </p>
                <p className="mt-3 font-ourfont font-normal text-sm text-subtext">
                  New to our site?
                </p>
                <span className="font-ourfont font-normal text-sm text-subtext">
                  You can{" "}
                </span>
                {/* {isReg ?  */}
                <button className="font-ourfont font-semibold text-sm text-ourmedpurp">
                  Register Here!
                </button>
                <br />
                <form className="w-full max-w-sm mt-5">
                  <p className="font-medium">Email</p>
                  <div className="flex items-center border-b-2 border-ourmedpurp ">
                    <input
                      className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                      type="text"
                      placeholder="Enter your email address"
                      name="email"
                      value={email}
                      onChange={(e) => {
                        setEmail(e.target.value);
                      }}
                    />
                  </div>
                  {/* <div className="text-[12px] text-red-600">{used}</div> */}
                  <p className="font-medium mt-5">Password</p>
                  <div className="flex items-center border-b-2 border-ourmedpurp ">
                    <input
                      onChange={(e) => {
                        setPassword(e.target.value);
                      }}
                      value={password}
                      className="appearance-none bg-transparent border-none w-full text-subtext mr-3 py-1 leading-tight focus:outline-none"
                      type="password"
                      placeholder="Enter your password"
                      name="password"
                    />
                  </div>
                  <div>
                    <label
                      htmlFor="type"
                      className="font-medium mt-5 block mb-1 text-sm text-neutralSecondary"
                    >
                      Role:
                    </label>
                    <select
                      type="text"
                      name="role"
                      id="role"
                      value={role}
                      onChange={(e) => {
                        setRole(e.target.value);
                      }}
                      className="border-b-2 text-gray-900 text-sm rounded-sm focus:outline-none focus:border-b-buttons block w-full p-2 bg-[#F0F0F0] placeholder-[#F0F0F0] "
                      required
                    >
                      <option defaultValue>Choose a type</option>
                      <option value="user">User</option>
                      <option value="guide">Tour Guide</option>
                    </select>
                  </div>
                  <div className="mt-8">
                    <button
                      type="submit"
                      onClick={(e) => {
                        loginUser(e);
                      }}
                      className="flex-shrink-0 bg-[#F27D42] text-sm text-white py-3 px-1 rounded-3xl w-1/2 font-medium btn-primary"
                    >
                      Sign In
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

      <img
        src={plane}
        alt="bottom"
        className="absolute z-10 h-[715px] right-[340px] top-[-20px] -translate-y-36"
      />
    </div>
  );
};

export default Login;
