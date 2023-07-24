import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Basket from "./components/landing/basket.jsx";
import Checkout from "./components/landing/checkout.jsx";
import Dashboard from "./components/dashboard/dashboard";
import Explore from "./components/landing/explore.jsx";
import Home from "./components/landing/home.jsx";
import Orders from "./components/landing/orders.jsx";
import Profile from "./components/landing/profile.jsx";
import TestTable from "./components/landing/testTable/testTable.jsx";
import TestTableForm from "./components/landing/testTable/testTableForm.jsx";
import TestTableFormUpdate from "./components/landing/testTable/testTableFormUpdate.jsx";
import "./App.css";


function App() {

  return (
    <React.Fragment>
      <div className="bg-light">
        <Dashboard />


        {/* <div className="container-lg p-3 justify-content-center text-dark"> */}
        <Router>
          <Routes>
            <Route path="/p114" element={<Home />} />
            <Route path="/p114/explore" element={<Explore />} />
            <Route path="/p114/basket" element={<Basket />} />
            <Route path="/p114/checkout" element={<Checkout />} />
            <Route path="/p114/orders" element={<Orders />} />
            <Route path="/p114/profile" element={<Profile />} />
            <Route path="/p114/testtable" element={<TestTable />} />
            <Route path="/p114/testtable/form" element={<TestTableForm />} />
            <Route path="/p114/testtable/form/update/*" element={<TestTableFormUpdate />} />
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
              <p>Vannara Thong!</p>
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
