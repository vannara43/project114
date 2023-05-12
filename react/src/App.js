// import React from "react";
import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import testService from "./components/services/Service";
import Basket from "./components/landing/basket.jsx";
import Checkout from "./components/landing/checkout.jsx";
import Dashboard from "./components/dashboard/dashboard";
import Explore from "./components/landing/explore.jsx";
import Home from "./components/landing/home.jsx";
import Orders from "./components/landing/orders.jsx";
import Profile from "./components/landing/profile.jsx";
import "./App.css";


function App() {

  const [testTableOne, setTestTableOne] = useState([])
  const [currentPage] = useState(0);
  const [pageSize] = useState(5);


  const TestTableOneGetAll = () => {
    testService.getAll(0, 5).then(TestTableOneGetAllSuccess).catch(TestTableOneGetAllError)
  }
  const TestTableOneGetAllSuccess = (response) => {
    console.table(response.pagedItems);
  }

  const TestTableOneGetAllError = (err) => {
    console.log(err);
  }
  useEffect(() => {
    TestTableOneGetAll();
  }, [])

  return (
    <React.Fragment>
      <div className="">
        <Dashboard />

        {/* <div className="container-lg p-3 justify-content-center text-dark"> */}
        <Router>
          <Routes>
            <Route path="/p114" element={<Home/>}/>
            <Route path="/p114/explore" element={<Explore/>} />
            <Route path="/p114/basket" element={<Basket />} />
            <Route path="/p114/checkout" element={<Checkout />} />
            <Route path="/p114/orders" element={<Orders />} />
            <Route path="/p114/profile" element={<Profile />} />
          </Routes>
        </Router>
      {/* </div> */}

        <div className="">
          <h3 className="my-3">Meet our developers</h3>
          <div className="row ">
            <div className="col col-2">
              <img height="100px" width="100px" className="rounded-circle" alt="Jared Williams" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPdqUOfIfiQgQv2AK5LxRt2HgJysKGiyDjSg&usqp=CAU" />
              <p className="">Jared Williams</p>
            </div>
            <div className="col col-2">
              <img height="100px" width="100px" className="rounded-circle" alt="Vannara Thong" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPdqUOfIfiQgQv2AK5LxRt2HgJysKGiyDjSg&usqp=CAU" />
              <p>Vannara Thong</p>
            </div>
            <div className="col col-2">
              <img height="100px" width="100px" className="rounded-circle" alt="Third Developer" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPdqUOfIfiQgQv2AK5LxRt2HgJysKGiyDjSg&usqp=CAU" />
              <p>Liza Ramilo</p>
            </div>
          </div>
        </div>
      </div>


    </React.Fragment>
  );
}

export default App;
