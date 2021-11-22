import React from "react";

const petEdit = (props) => {
  const { id, name } = props.pet;
  return (
    <div>
      <a href = {`/`}>Back to Pets</a>
      <h1>Edit {props.pet.name}</h1>
      <form action = {`/pets/${id}`} method = "post">
        <input type = "hidden" name = "_method" value = "patch" />
        <p>Name:</p>
        <input defaultValue={name} name = "pet[name]" />
        <br />
        <br />
        <button type = "submit">Update Pet</button>
      </form>
    </div>
  );
};

export default petEdit;