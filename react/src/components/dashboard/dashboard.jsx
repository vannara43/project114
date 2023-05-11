import React from "react";


function dashboard() {
  return (
    <React.Fragment>
    <div className="nav p-3 bg-primary">
        <h2 className="text-white col-lg-2 text-center">Project E-Com</h2>
        <a href={"/p114"}><button className="mx-1 btn btn-primary">Home</button></a>
        <a href='/p114/explore'><button className="mx-1 btn btn-primary">Explore</button></a>
        <a href='/p114/basket'><button className="mx-1 btn btn-primary">My Basket</button></a>
        <a href='/p114/checkout'><button className="mx-1 btn btn-primary">Check Out</button></a>
        <a href='/p114/profile'><button className="mx-1 btn btn-primary">My Profile</button></a>
        <a href='/p114/orders'><button className="mx-1 btn btn-primary">Recent Orders</button></a>
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