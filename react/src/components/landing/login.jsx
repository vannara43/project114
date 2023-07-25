import React from "react";

function Profile() {
  // Insert JS Code here

  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment>
      <div className="container ">
        <h2 className="">Login</h2>
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input
              type="email"
              class="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              placeholder="Enter email"
            />
            <small id="emailHelp" class="form-text text-muted">
              We'll never share your email with anyone else.
            </small>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input
              type="password"
              class="form-control"
              id="exampleInputPassword1"
              placeholder="Password"
            />
          </div>
          <button type="submit" class="btn btn-primary mt-2">
            Login
          </button>
        </form>
      </div>
    </React.Fragment>
    //insert HTML Code above
  );
}

export default Profile;
