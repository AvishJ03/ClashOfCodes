import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from "./Pages/Login.js";
import Parallaxx from "./Pages/Parallaxx.js";
import AllPosts from "./Pages/AllPosts.js";
import Trips from "./Pages/Trips";
import Chat from "./Pages/Chat.js";
import TravelBuddy from "./Pages/TravelBuddy.js";
import TripForm from "./Pages/TripForm.js";
import TripForm2 from "./Pages/TripForm2.js";
import Guides from "./Pages/Guides.js";
import AddGuide from "./Pages/AddGuide.js";
import Itenary from "./Pages/Itenary.js";
import Profile from "./Pages/Profile.js";
import Sidebar from "./Components/Sidebar/Sidebar.js";
import Maps from "./Components/TravelCard/Maps.js";

function App() {
  // const [me, setMe] = useState(false);
  // useEffect(()=>{}, [me])
  return (
    <div className="App font-ourfont flex">
      <Router>
        <Sidebar />
        {/* {(me || localStorage.getItem("token")) && <Sidebar setMe={setMe} />} */}
        <Routes>
          {/* <Route path="/login" element={<Login setMe={setMe} />} /> */}
          <Route path="/login" element={<Login />} />
          {/* <Route path="/parallaxx" element={<Parallaxx />} /> */}
          <Route path="/trips" element={<Trips />} />
          <Route path="/posts" element={<AllPosts />} />
          <Route path="/chat" element={<Chat />} />
          <Route path="/travelbuddy" element={<TravelBuddy />} />
          <Route path="/guides" element={<Guides />} />
          <Route path="/addguides" element={<AddGuide />} />
          <Route path="/tripform" element={<TripForm />} />
          <Route path="/tripform2" element={<TripForm2 />} />
          <Route path="/iternary" element={<Itenary />} />
          <Route path="/maps" element={<Maps />} />

          {/* <Route path="/parallax" element={<Parallaxx/>} /> */}
          {/* <Parallaxx/> */}

          <Route path="/profile" element={<Profile />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
