import React from "react";

function Profile() {
  // Insert JS Code here

  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment>
    <div className="">
      <h2>Profile Page</h2>
      <div className="col col-9 shadow rounded p-1 m-2 border row ">
        <div className="col col-8 ">
        <h4>Personal Info</h4>
        <p>Name: George Noecho</p>
        <p>Email: georgenoecho@gmail.com</p>
        <p>Address: 1234 main st.</p>
        <p>City: Bloomington, CA, 30222</p>
        </div>
      <div className="col col-1">
        <img className="border rounded m-2" alt="avatar" width={"auto"} height={"auto"} src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7ZQsrni23f7QEWYS2bz7tOFd8pAxKZvwmLELXub8F-LAYEt2qCtIoYW6L5zgbqvTGs3Q&usqp=CAU"/>
        </div>
      </div>

      <form className="mt-4 mx-2 col-9 shadow border rounded p-3">
  <div className="row ">
    <h4>Edit Info</h4>
    <div className="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" className="form-control" id="inputEmail4" placeholder="Email"/>
    </div>
    <div className="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" className="form-control" id="inputPassword4" placeholder="Password"/>
    </div>
  </div>
  <div className="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" className="form-control" id="inputAddress" placeholder="1234 Main St"/>
  </div>
  <div className="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" className="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor"/>
  </div>
  <div className="row">
    <div className="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" className="form-control" id="inputCity"/>
    </div>
    <div className="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" className="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div className="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" className="form-control" id="inputZip"/>
    </div>
  </div>
  <button type="submit" className="btn btn-primary mt-2">Update</button>
</form>
    </div>
    </React.Fragment>
    //insert HTML Code above
  )
}

export default Profile