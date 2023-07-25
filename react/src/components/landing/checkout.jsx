import React, { useEffect, useState } from "react";
import * as checkoutService from "../services/checkoutService.js";
import checkoutImage from "../../images/checkout.png";

function Checkout() {
  // Insert JS Code here
  // Insert JS Code here
  const [state, setState] = useState([{}]);

  // getAll request service
  const getAllCheckout = () => {
    checkoutService
      .getAllCheckout(0, 30)
      .then(getAllCheckoutSuccess)
      .catch(getAllCheckoutError);
  };
  const getAllCheckoutSuccess = (response) => {
    let arrayOfCheckouts = response;
    setState(arrayOfCheckouts.pagedItems);
    console.log("success", state);
  };

  const getAllCheckoutError = (err) => {
    console.log(err);
  };

  // useEffect starts on page load up
  useEffect(() => {
    getAllCheckout();
    console.log("CheckoutUseEffect", state);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  //  const deleteCheckout = (e) => {
  //    console.log("delete", e)
  //    const data =  e.target.value;
  //    checkoutService.deleteCheckout(data).then(onDeleteSuccess).catch(onDeleteError);
  //  }

  //  const onDeleteSuccess = (response) => {
  //    alert('Delete Success!', response);
  //    getAllCheckout();
  //  }
  //  const onDeleteError = (err) => {
  //    alert('Delete Fail!', err);
  //  }
  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment>
      <h2>Check-Out Page</h2>
      <button onClick={getAllCheckout} className="btn btn-primary">
        Get Checkouts
      </button>

      {/* Get Cards */}
      <div className="row">
        {state.map((data, index) => {
          return (
            <div
              className="card shadow col-2 m-1"
              style={{ width: "18rem" }}
              key={index}
            >
              <div className="card-body">
                <img
                  className="card-img-top"
                  alt="basket_image.jpg"
                  src={checkoutImage}
                />
                <h5>Checkout ID# {data.id}</h5>
                <p className="card-text">Email: {data.customerEmail}</p>
                <div className="text-end">
                  {/* <a href={`/p114/testtable/form/update/${data.id}`} className="btn btn-success" > Edit </a> */}
                  {/* <button type="button" onClick={getAllBasket} value={data.id} className="btn btn-warning">Cost: {data.price}</button> */}
                  {/* <button type="button" className="btn btn-danger text-right" onClick={deleteBasket} value={data.id}>Delete</button> */}
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </React.Fragment>
    //insert HTML Code above
  );
}

export default Checkout;
