import React, { useEffect, useState } from "react";
import { useLocation } from "react-router-dom";
import * as testService from "../../services/testService.js";
import Swal from "sweetalert2";

function TestTable(props) {
  /* ADD AXIOS BEGIN */
  
  const location = useLocation();
  const newId = location.pathname.slice(28,30);
  const [updateForm, setUpdateForm] = useState({
    id: newId,
    name: "",
    sku: "",
    price: "",
    description: "",
    imgUrl: "",
  });


  useEffect(() => {
  }, [])

  const getIdHandle =()=> {
    console.log(updateForm);
  }
  
  // This functionm will update the useState from form data
  const handleChange = (event) => {
    setUpdateForm({ ...updateForm, [event.target.name]: event.target.value });
  };
  
  // This function will send a PUT request to api from testServices
  const onUpdateRequested = (formData) => {
    formData.preventDefault();
    testService.updateTest(updateForm).then(addTestTableSuccess).catch(addTestTableError);
    console.log("Submitted", formData);
  };

  const addTestTableSuccess = () => {
    Swal.fire({
      title: "You have successfully updated a new post!",
      text: "You will now see update from project114-ecommerce",
      icon: "success",
      confirmButtonText: "Okay",
    });
  };

  const addTestTableError = () => {
    Swal.fire({
      title: "Attempt Fail!",
      text: "You will not see update",
      icon: "fail",
      confirmButtonText: "Okay",
    });
  };


  return (
    <React.Fragment>
      
      <div className="container d-flex justify-content-center my-2 ">
        <a className="btn btn-danger" href="/p114/testTable">
      ← Go Back
      </a>
      <button onClick={getIdHandle}>Get Log</button>
      </div>
      <div className="container d-flex justify-content-center row ">
        <div className="col-6 shadow border row">
        <h1 className="text-center">Update this post</h1>
          <form onSubmit={onUpdateRequested} className="form-group m-3">
            <label for="id">Identification #</label>
            <input type="text" name="id" className="form-control" value={newId} disabled/>
            <label htmlFor="name" id="name">
              Name
            </label>
            <input
              name="name"
              type="text"
              className="form-control"
              id="name"
              placeholder="Enter Name"
              onChange={(e) => handleChange(e)}
            />
            <label for="sku">SKU#</label>
            <input
              name="sku"
              type="number"
              className="form-control"
              id="sku"
              placeholder="SKU #"
              onChange={(e) => handleChange(e)}
            />
            <label for="price">Price</label>
            <input
              name="price"
              type="number"
              className="form-control"
              id="price"
              placeholder="Price"
              onChange={(e) => handleChange(e)}
            />
            <label for="description">Description</label>
            <input
              name="description"
              type="text"
              className="form-control"
              id="description"
              placeholder="Description"
              onChange={(e) => handleChange(e)}
            />
            <label for="imgUrl">Image Url</label>
            <input
              name="imgUrl"
              type="text"
              className="form-control"
              id="imgUrl"
              placeholder="Image Url"
              onChange={(e) => handleChange(e)}
            />
          <div className="text-center my-2">
            <button type="submit" className="btn btn-success">
              Update Post
            </button>
          </div>
          </form>
        </div>
      </div>
    </React.Fragment>
  );
}

export default TestTable;
