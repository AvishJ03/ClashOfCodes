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

function App() {
  // const [me, setMe] = useState(false);
  // useEffect(()=>{}, [me])
  return (
    <div className="App font-ourfont">
      <Router>
        {/* {(me || localStorage.getItem("token")) && <Sidebar setMe={setMe} />} */}
        <Routes>
          {/* <Route path="/login" element={<Login setMe={setMe} />} /> */}
          <Route path="/login" element={<Login />} />
          {/* <Route path="/parallaxx" element={<Parallaxx />} /> */}
          <Route path="/trips" element={<Trips />} />
          <Route path="/posts" element={<AllPosts />} />
          <Route path="/chat" element={<Chat />} />
          <Route path="/travelbuddy" element={<TravelBuddy/>} />
          <Route path="/guides" element={<Guides/>} />
          {/* <Trips/> */}
    {/* <Parallaxx/> */}
    {/* <Login/> */}
    {/* <TripForm/> */}
    {/* <TripForm2/> */}
   
        </Routes>
      </Router>
    </div>
  );
}

export default App;
