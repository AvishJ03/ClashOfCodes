import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from "./Pages/Login.js";
import Parallaxx from "./Pages/Parallaxx.js";
import AllPosts from "./Pages/AllPosts.js";
import Trips from "./Pages/Trips";
import Chat from "./Pages/Chat.js";

function App() {
  // const [me, setMe] = useState(false);
  // useEffect(()=>{}, [me])
  return (
    <div className="App font-ourfont flex">
      <Router>
        {/* {(me || localStorage.getItem("token")) && <Sidebar setMe={setMe} />} */}
        <Routes>
          {/* <Route path="/login" element={<Login setMe={setMe} />} /> */}
          <Route path="/login" element={<Login />} />
          {/* <Route path="/parallaxx" element={<Parallaxx />} /> */}
          <Route path="/trips" element={<Trips />} />
          <Route path="/posts" element={<AllPosts />} />
          <Route path="/chat" element={<Chat />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
