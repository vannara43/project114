import React from "react";
import "./App.css";
import testService from "./components/Service";

function App() {
  const onGetAllSuccess = (response) => {};
  return (
    <React.Fragment>
      <h1>Default Page</h1>
      <p>This is a paragrapg</p>
      <p>Added by Vann T</p>
      <p>Added by jared</p>
      <p>Added by Vann again</p>
      <p>Added by jared after pull</p>
    </React.Fragment>
  );
}

export default App;
