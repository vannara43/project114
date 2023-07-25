import React, { useEffect, useState } from "react";
import * as productService from "../services/productService.js";

function Explore() {
  // Insert JS Code here
  const [state, setState] = useState([{}]);

  // GETALL request service
  const productGetAll = () => {
    productService
      .getAllProduct(0, 30)
      .then(productGetAllSuccess)
      .catch(productGetAllError);
  };
  const productGetAllSuccess = (response) => {
    let arrayOfPeeps = response;
    setState(arrayOfPeeps.pagedItems);
    console.log("success", state);
  };

  const productGetAllError = (err) => {
    console.log(err);
  };

  // useEffect starts on page load up
  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => productGetAll(), []);

  const messageAlert = (e) => {
    console.log("messageAlert", e.target.value);
  };

  // DELETE request
  //   const delPost = (e) => {
  //     console.log(e.target.value);
  //     const data =  e.target.value;
  //     testService.deleteTest(data).then(onDeleteSuccess).catch(onDeleteError);
  // };

  // const onDeleteSuccess = (response) => {
  //   alert('Delete Success!', response);
  //   productGetAll();
  // };

  // const onDeleteError = (err) => {
  //     alert('Delete Fail!', err);
  // };
  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment>
      <div className="container-lg">
        <h2>Explore Page</h2>
        {/* Get post from API server */}
        <button className="btn btn-primary" onClick={productGetAll}>
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
                style={{ width: "18rem", height: "auto" }}
                key={index}
              >
                <div className="card-body">
                  <img
                    className="card-img-top"
                    alt=""
                    src={data.imgUrl}
                    style={{ height: "16rem" }}
                  />
                  <h5 className="card-title mt-2" style={{ height: "3rem" }}>
                    {data.id}. {data.name}
                  </h5>
                  <p className="" style={{ height: "5rem", fontSize: "14px" }}>
                    {data.description}
                  </p>
                  <div className="text-end" style={{ height: "2rem" }}>
                    {/* <a href={`/p114/testtable/form/update/${data.id}`} className="btn btn-success" > Edit </a> */}
                    <button
                      type="button"
                      onClick={messageAlert}
                      value={data.id}
                      className="btn btn-warning"
                    >
                      Add to cart
                    </button>
                    {/* <button type="button" className="btn btn-danger" onClick={delPost} value={data.id}>Delete</button> */}
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </React.Fragment>
    //insert HTML Code above
  );
}

export default Explore;
