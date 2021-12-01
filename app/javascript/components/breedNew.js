import React from "react";

const breedNew = (props) =>{
  return (
    <div>
      <h1>Add a New {props.pet.name} Breed</h1>
      <a href = {`/pets/${props.pet.id}/breeds`}>Back to Breeds</a>
      <form action = {`/pets/${props.pet.id}/breeds`} method = "post">
        <p>Name:</p>
        <input name = "breed[name]" />
        <p>Description:</p>
        <textarea name="breed[description]" />
        <br />
        <br />
        <button type = "submit">Add Breed</button>
      </form>
    </div>
  );
};

export default breedNew;

