import React, { useEffect, useState } from "react";
import * as orderService from "../services/ordersService.js";

function Orders() {
  // Insert JS Code here
  const [state, setState] = useState([{}]);

  // GETALL request service
  const orderGetAll = () => {
    orderService
      .getAllOrders(0, 30)
      .then(orderGetAllSuccess)
      .catch(orderGetAllError);
  };
  const orderGetAllSuccess = (response) => {
    let arrayOfPeeps = response;
    setState(arrayOfPeeps.pagedItems);
    console.log("success", state);
  };

  const orderGetAllError = (err) => {
    console.log(err);
  };

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => orderGetAll(), []);

  // Insert JS Code above here
  return (
    //insert HTML Code below
    <React.Fragment>
      <div>
        <div className="container">
          <h2>Orders Page</h2>
          <div className="row">
            <div className="col d-flex align-items-center justify-content-center">
              <h5>Order ID</h5>
            </div>
            <div className="col d-flex align-items-center justify-content-center">
              <h5>Customer ID</h5>
            </div>
            <div className="col d-flex align-items-center justify-content-center">
              <h5>Order Date</h5>
            </div>
            <div className="col d-flex align-items-center justify-content-center">
              <h5>Total Item Quantity</h5>
            </div>
            <div className="col d-flex align-items-center justify-content-center">
              <h5>Total</h5>
            </div>
            <div className="col d-flex align-items-center justify-content-center">
              <h5>Option</h5>
            </div>
          </div>

          <div className="container">
            <div className="row">
              {state.map((data, index) => {
                return (
                  <div
                    className="row shadow m-1 p-1 bg-light rounded"
                    key={index}
                  >
                    <p className="col rounded d-flex align-items-center justify-content-center">
                      {data.id}
                    </p>
                    <p className="col rounded d-flex align-items-center justify-content-center">
                      {data.id}
                    </p>
                    <p className="col rounded d-flex align-items-center justify-content-center">
                      {data.name}
                    </p>
                    <p className="col rounded d-flex align-items-center justify-content-center">
                      {data.name}
                    </p>
                    <p className="col rounded d-flex align-items-center justify-content-center">
                      {data.name}
                    </p>
                    <div className="col btn-sm d-flex align-items-center justify-content-center">
                      <button className="btn btn-outline-success btn-sm rounded shadow-lg m-1">
                        Details
                      </button>
                      <button className="btn btn-outline-primary btn-sm rounded shadow-lg m-1">
                        Edit
                      </button>
                      <button className="btn btn-outline-danger btn-sm rounded border border-danger shadow-lg m-1">
                        Delete
                      </button>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        </div>
      </div>
    </React.Fragment>
    //insert HTML Code above
  );
}

export default Orders;
