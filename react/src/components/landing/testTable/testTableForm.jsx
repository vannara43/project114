import React, { useEffect, useState } from "react";
import * as testService from "../../services/testService.js";
import Swal from "sweetalert2";

function TestTable(props) {
  /* ADD AXIOS BEGIN */

  const [post, setPost] = useState({
    name: "",
    sku: "",
    price: "",
    description: "",
    imgUrl: "",
  });

  const handleChange = (event) => {
    setPost({ ...post, [event.target.name]: event.target.value });
  };
  const handleSubmit = (e) => {
    console.log("Submitted", e);
    // e.preventDefault();
    testService.addTest(post).then(addTestTableSuccess).catch(addTestTableError);
  };

  const addTestTableSuccess = () => {
    Swal.fire({
      title: "You have successfully added a new post!",
      text: "You will now see post from project114-ecommerce",
      icon: "success",
      confirmButtonText: "Okay",
    });
  };

  const addTestTableError = () => {
    Swal.fire({
      title: "Attempt Fail!",
      text: "You will not see post",
      icon: "fail",
      confirmButtonText: "Okay",
    });
  };

  useEffect(() => {}, []);

  return (
    <React.Fragment>
      
      <div className="container d-flex justify-content-center my-2 "><a className="btn btn-danger" href="/p114/testTable">
      ← Go Back
      </a></div>
      <div className="container d-flex justify-content-center row ">
        <div className="col-6 shadow border row">
        <h1 className="text-center">Add a post</h1>
          <form onSubmit={handleSubmit} className="form-group m-3">
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
            <label for="inputName">SKU#</label>
            <input
              name="sku"
              type="number"
              className="form-control"
              id="sku"
              placeholder="SKU #"
              onChange={(e) => handleChange(e)}
            />
            <label for="inputName">Price</label>
            <input
              name="price"
              type="number"
              className="form-control"
              id="price"
              placeholder="Price"
              onChange={(e) => handleChange(e)}
            />
            <label for="inputName">Description</label>
            <input
              name="description"
              type="text"
              className="form-control"
              id="description"
              placeholder="Description"
              onChange={(e) => handleChange(e)}
            />
            <label for="inputName">Image Url</label>
            <input
              name="imgUrl"
              type="text"
              className="form-control"
              id="imgUrl"
              placeholder="Image Url"
              onChange={(e) => handleChange(e)}
            />
          <div className="text-center my-2">
            <button className="btn btn-warning" type="submit">
              Add Posts
            </button>
          </div>
          </form>
        </div>
      </div>
    </React.Fragment>
  );
}

export default TestTable;
