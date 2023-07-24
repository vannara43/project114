import React from "react";

function Home() {
  // Insert JS Code here

  // Insert JS Code here
  return (
    //insert HTML Code below
    <React.Fragment>
      <div className="container">
      <h2 className="">Home Page</h2>
        <div style={{"width":"auto","height":"auto","margin":"30px"}} className="">
        <table className="table">
          <thead>
            <tr>
              <th className="col">Explore</th>
              <th className="col">Baskets</th>
            </tr>
          </thead>
          <tbody>
            <tr className="">
              <td><img src="https://i.insider.com/582f3455e02ba72b318b4f6a?width=750&format=jpeg&auto=webp" alt="exploreimage" width="700px" height="400px"/></td>
              <td><img src="https://media.istockphoto.com/id/1354202406/vector/shopping-or-buying-concept-with-empty-yellow-shopping-cart-on-purple-background-vector.jpg?s=612x612&w=0&k=20&c=HiaqglJdqNoFkh2028XvWVyzx8SyfXrXv9GMkeElNwg=" alt="exploreimage" width="auto" height="400px"/></td>
            </tr>
          </tbody>
        </table>
        <hr/>
        <table className="table">
          <thead>
            <tr>
              <th className="col">Recent Orders</th>
              <th className="col">Checkout</th>
            </tr>
          </thead>
          <tbody>
            <tr style={{"width":"auto"}}>
              <td><img src="https://i0.wp.com/www.alphr.com/wp-content/uploads/2021/07/How-to-Clear-and-Turn-Off-Recent-Files-in-Windows-10.png?fit=3256%2C4070&ssl=1" alt="exploreimage" width="auto" height="400px"/></td>
              <td><img src="https://cdn.shopify.com/s/files/1/0070/7032/files/ecommerce-checkout-flow.png?format=jpg&quality=90&v=1679692675&width=1024" alt="exploreimage" width="875px" height="400px"/></td>
            </tr>
          </tbody>
        </table>
        </div>
        <div style={{"width":"auto","height":"200px", "margin":"30px"}} className="border bg-secondary text-center">
          <h4>Contact Us for support!</h4>
          <img src="https://cdn.flatworldsolutions.com/call-center/images/14-ways-to-provide-a-great-customer-experience-in-your-call-center.jpg" alt="contactimage" style={{"width":"1210px","height":"200px"}}/>
        </div>
      </div>
    </React.Fragment>
    //insert HTML Code above
  );
}

export default Home;
