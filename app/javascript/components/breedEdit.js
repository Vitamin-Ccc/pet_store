import React from "react";

const breedEdit = (props) => {
  return (
    <div>
      <a href = {`/`}>Back to Pets</a>
      <h1>Edit {props.pet.name}</h1>
      <form action = {`/pets/${props.pet.id}/breeds/${props.breed.id}`} method = "post">
        <input type = "hidden" name = "_method" value = "patch" />
        <p>Name:</p>
        <input defaultValue={props.breed.name} name = "breed[name]" />
        <p>Description: </p>
        <textarea defaultValue={props.breed.description} name = "breed[description]" />
        <br />
        <br />
        <button type = "submit">Update Breed</button>
      </form>
    </div>
  );
};

export default breedEdit;

