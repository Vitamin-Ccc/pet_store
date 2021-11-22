import React from "react"

const breed = (props) => {
  return (
    <div>
      <a href = {`/pets/${props.breed.pet_id}/breeds`}>Back</a>
      <h1>{props.breed.name}</h1>
      <hr />
      <p>{props.breed.description}</p>
    </div>
  );
};


export default breed;