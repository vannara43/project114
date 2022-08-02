import React, { useEffect, useState } from "react";
import testService from "./components/services/Service"
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
      <div className="container">
        <h1>Project E-Com</h1>
        <hr />
        <h3>Tasks</h3>
        <p>Make A Dashboard<br />
          Make a register page<br />
          Make a login<br />
          Make a user profile<br />
          Make a product page<br />
          Make a checkout page<br />
          Make a shop page</p>
        <h3 className="my-3">Meet our developers</h3>
        <div className="row ">
          <div className="col col-2">
            <img height="100px" width="100px" className="rounded-circle" alt="" src="https://media-exp1.licdn.com/dms/image/C5603AQGscng7POt26g/profile-displayphoto-shrink_200_200/0/1648413781916?e=1665014400&v=beta&t=nZPZb-vSH5qJZB16q9ufTSlA9xHLN85_Y_XWn_1EV3o" />
            <p className="">Jared Williams</p>
          </div>
          <div className="col">
            <img height="100px" width="100px" className="rounded-circle" alt="" src="https://media-exp1.licdn.com/dms/image/C5603AQEcL8kmvPemtQ/profile-displayphoto-shrink_200_200/0/1652878926495?e=1665014400&v=beta&t=zqeXGf73gG9nkbe1y8cM26kcV6brfzJ57oHiYjfRjD0" />
            <p>Vannara Thong</p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}

export default App;
