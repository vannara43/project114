import React, { useEffect, useState } from "react";
import * as basketService from "../services/basketService.js";
import basketimage from "../../images/basket.jpg"

function Basket() {
  // Insert JS Code here
  const [state, setState] = useState([{}]);
  
  // getAll request service
  const getAllBasket = () => {
    basketService
      .getAllBasket(0, 30)
      .then(getAllBasketSuccess)
      .catch(getAllBasketError);
  };
  const getAllBasketSuccess = (response) => {
    let arrayOfBaskets = response;
    setState(arrayOfBaskets.pagedItems);
    console.log("success", state);
  };

  const getAllBasketError = (err) => {
    console.log(err);
  };

// useEffect starts on page load up
  useEffect(() => {
    getAllBasket();
    console.log("basketUseEffect", state);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const deleteBasket = (e) => {
    console.log("delete", e)
    const data =  e.target.value;
    basketService.deleteBasket(data).then(onDeleteSuccess).catch(onDeleteError);
  }

  const onDeleteSuccess = (response) => {
    alert('Delete Success!', response);
    getAllBasket();
  }
  const onDeleteError = (err) => {
    alert('Delete Fail!', err);
  }

  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment> 
    <h2>Basket Page</h2>

    <button className="btn btn-primary" onClick={getAllBasket}>
          Get Posts
    </button>

    <div className="row">
          {state.map((data, index) => {
            return (
              <div
                className="card shadow col-2 m-1"
                style={{ width: "18rem" }}
                key={index}
              >
                <div className="card-body">
                  <img className="card-img-top" alt="basket_image.jpg" src={basketimage}/>
                  <h5>Basket ID# {data.id}</h5>
                  <p className="card-text">Email: {data.customerEmail}</p>
                  <p>List of items:</p>
                  <ul><li>{data.listOfBasketItems}</li></ul>
                  <div className="text-end">
                    {/* <a href={`/p114/testtable/form/update/${data.id}`} className="btn btn-success" > Edit </a> */}
                    {/* <button type="button" onClick={getAllBasket} value={data.id} className="btn btn-warning">Cost: {data.price}</button> */}
                    <button type="button" className="btn btn-danger text-right" onClick={deleteBasket} value={data.id}>Delete</button>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
    </React.Fragment> 
    //insert HTML Code above
  )
}

export default Basket