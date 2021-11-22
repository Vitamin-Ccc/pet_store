import React from "react";

const pet = (props) => {
  return (
    <div>
      <h1>{props.pet.name}</h1>
      <p><a href = {`/`}>Back to Pets</a></p>
      <p><a href = {`/pets/${props.pet.id}/edit`}>Edit Pet</a></p>
      <p><a href = {`/pets/${props.pet.id}`} data-method = "delete">Delete Pet</a></p>
    </div>
  )
}

export default pet;