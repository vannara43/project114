import React from "react";

function dashboard() {
  return (
    <React.Fragment>
      <div
        className="nav p-3 bg-primary"
        style={{
          backgroundImage:
            "url('https://e0.pxfuel.com/wallpapers/1023/198/desktop-wallpaper-dark-gold-black-and-gold-pattern.jpg')",
        }}
      >
        <h2 className="text-white text-center">Project E-Com</h2>
      </div>
      <div className="p-2 text-dark text-center bg-light">
        <a href="/p114" className="p-2 m-2 text-dark">
          Home
        </a>
        <a href="/p114/explore" className="p-2 m-2 text-dark">
          Explore
        </a>
        <a href="/p114/basket" className="p-2 m-2 text-dark">
          My Basket
        </a>
        <a href="/p114/checkout" className="p-2 m-2 text-dark">
          Check Out
        </a>
        <a href="/p114/profile" className="p-2 m-2 text-dark">
          My Profile
        </a>
        <a href="/p114/orders" className="p-2 m-2 text-dark">
          Recent Orders
        </a>
        {/* <a href='/p114/testtable' className="p-2 text-dark">Test</a> */}
        <input type="name" placeholder="Search for a product" />
        <a className="p-2 border-0" href="?">
          Search
        </a>

        <a
          href="/p114/login"
          style={{ textDecoration: "none", height: "25px" }}
          className="p-2 m-2 text-dark"
        >
          Login
        </a>
        <a
          href="/p114/register"
          style={{ textDecoration: "none", height: "25px" }}
          className="p-2 m-2 text-dark"
        >
          Register
        </a>
      </div>
    </React.Fragment>
  );
}

export default dashboard;
