import React, { useEffect, useState } from "react";
import * as testService from "../../services/testService.js";

function TestTable() {
  const [state, setState] = useState([{}]);
  
  // GETALL request service
  const TestTableOneGetAll = () => {
    testService
      .getAllTest(0, 30)
      .then(TestTableOneGetAllSuccess)
      .catch(TestTableOneGetAllError);
  };
  const TestTableOneGetAllSuccess = (response) => {
    let arrayOfPeeps = response;
    setState(arrayOfPeeps.pagedItems);
    console.log("success", state);
  };

  const TestTableOneGetAllError = (err) => {
    console.log(err);
  };

// useEffect starts on page load up
  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => TestTableOneGetAll(),[]);

  const messageAlert = (e) => {
    console.log("messageAlert", e.target.value)
  };

  // DELETE request
  const delPost = (e) => {
    console.log(e.target.value);
    const data =  e.target.value;
    testService.deleteTest(data).then(onDeleteSuccess).catch(onDeleteError);
};

const onDeleteSuccess = (response) => {
  alert('Delete Success!', response);
  TestTableOneGetAll();
};

const onDeleteError = (err) => {
    alert('Delete Fail!', err);
};

  return (
    <React.Fragment>
      <div className="container-lg">
        <h2>TestTable Page</h2>
        {/* Get post from API server */}
        <button className="btn btn-primary" onClick={TestTableOneGetAll}>
          Get Posts
        </button>
        {/* Add post from API server */}
        <a className="btn btn-warning" href="/p114/testtable/form">
          Add Post
        </a>

        <br></br>
        <div className="row">
          {state.map((data, index) => {
            return (
              <div
                className="card shadow col-2 m-1"
                style={{ width: "18rem" }}
                key={index}
              >
                <div className="card-body">
                  <img className="card-img-top" alt="" src={data.imgUrl} />
                  <h5 className="card-title">{data.id}. {data.name}</h5>
                  <p className="" style={{ height: "4rem" }}>
                    {data.description}
                  </p>
                  <div className="text-center">
                    <a
                      href={`/p114/testtable/form/update/${data.id}`}
                      className="btn btn-success"
                    >
                      Edit
                    </a>
                    <button type="button" onClick={messageAlert} value={data.id} className="btn btn-warning">Cost: {data.price}</button>
                    <button type="button" className="btn btn-danger" onClick={delPost} value={data.id}>Delete</button>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </React.Fragment>
  );
}

export default TestTable;
