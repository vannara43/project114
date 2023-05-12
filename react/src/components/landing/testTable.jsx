import React, { useEffect, useState } from "react";
import testService from "../services/Service.js";

function TestTable() {
  
  const [state, setState] = useState([{}]);
  
  const TestTableOneGetAll = () => {
    testService.getAll(0, 15).then(TestTableOneGetAllSuccess).catch(TestTableOneGetAllError)
  }
  const TestTableOneGetAllSuccess = (response) => {
    let arrayOfPeeps = response;
    setState(arrayOfPeeps.pagedItems);
    console.log("success", state);
    };
    
    const TestTableOneGetAllError = (err) => {
      console.log(err);
    }

    for (let i = 0; i < state.length; i++){
        console.log(i);
    }

    useEffect(() => {
      TestTableOneGetAll()
    });

  return (
    <React.Fragment>
        <div className="container-lg">
            <h2>TestTable Page</h2>
            <button className="btn btn-primary" onClick={TestTableOneGetAll}>Get Posts</button>
            <br></br>
            <div className="row">
            {state.map((data,index)=> {
                return (
                    <div className="card shadow col-8 m-1" style={{"width": "18rem"}} key={index}>
                        <div class="card-body">
                        <h5 className="card-title">{data.name}</h5>
                        <p className="card-text small">
                        {data.description}
                        </p>
                        </div>
                    </div>
                )
            })}
        </div>
    </div>
    </React.Fragment>
  )
}

export default TestTable