import React from "react";

const petNew = (props) =>{
  return (
    <div>
      <h1>Create a New Pet</h1>
      <a href = {`/`}>Back to Pets</a>
      <form action = "/pets" method = "post">
        <p>Name:</p>
        <input name = "pet[name]" />
        <br />
        <br />
        <button type = "submit">Create Pet</button>
      </form>
    </div>
  );
};

export default petNew;