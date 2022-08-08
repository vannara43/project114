import React from "react";

function dashboard() {
  return (
    <React.Fragment>
    <div className="nav p-3 bg-primary">
        <h2 className="text-white col-lg-2 text-center">Project E-Com</h2>
        <button className="mx-1 btn btn-primary">Home</button>
        <button className="mx-1 btn btn-primary">Explore</button>
        <button className="mx-1 btn btn-primary">My Basket</button>
        <button className="mx-1 btn btn-primary">Check Out</button>
        <button className="mx-1 btn btn-primary">My Profile</button>
        <button className="mx-1 btn btn-primary">Recent Orders</button>
        <input type="textbox" placeholder="Search for a product"></input>
        <button className="mx-1 btn btn-outline-primary text-white border border-white">Search</button>
        <div className="row text-center">
        <a href="/#" style={{textDecoration: "none"}} className="mx-1 text-white">Login</a>
        <a href="/#" style={{textDecoration: "none"}} className="mx-1 text-white">Register</a>
        </div>
    </div>

    </React.Fragment>
  )
}

export default dashboard