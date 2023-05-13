import React from "react";


function dashboard() {
  return (
    <React.Fragment>
    <div className="nav p-3 bg-primary">
        <h2 className="text-white col-lg-2 text-center">Project E-Com</h2>
        <a href='/p114' className="btn btn-primary">Home</a>
        <a href='/p114/explore' className="btn btn-primary">Explore</a>
        <a href='/p114/basket' className="btn btn-primary">My Basket</a>
        <a href='/p114/checkout' className="btn btn-primary">Check Out</a>
        <a href='/p114/profile' className="btn btn-primary">My Profile</a>
        <a href='/p114/orders' className="btn btn-primary">Recent Orders</a>
        <a href='/p114/testtable' className="btn btn-primary">Test</a>
        <input type="textbox" placeholder="Search for a product"></input>
        <button className="mx-1 btn btn-outline-primary text-white border border-white">Search</button>
        <div className="row text-center">
        <a href="/#" style={{"textDecoration": "none", "height":"25px"}}  className="btn-sm text-white mx-2">Login</a>
        <a href="/#" style={{"textDecoration": "none", "height":"25px"}} className="btn-sm text-white mx-2">Register</a>
        </div>
    </div>

    </React.Fragment>
  )
}

export default dashboard