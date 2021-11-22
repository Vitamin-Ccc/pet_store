import React from "react";

const breeds = (props) => {
  const renderBreeds = () => {
    return props.breeds.map((breed) => {
      return (
        <div>
          <h3>{breed.name}</h3>
          <p>{breed.description}</p>
          <p><a href = {`/pets/${props.pet.id}/breeds/${breed.id}`}>View</a></p>
          <p><a href = {`/pets/${props.pet.id}/breeds/edit`}>Edit Breed</a></p>
          <p><a data-method = "delete" href = {`/pets/${props.pet.id}/breeds/${breed.id}`}>Delete Breed</a></p>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>{props.pet.name}</h1>
      <a href = {`/pets`}>Back to Pets</a>
      <br />
      <a href = {`/pets/${props.pet.id}/breeds/new`}>Add New Breed</a>
      <hr />
      <h1>Breeds: </h1>
      {renderBreeds()}
    </div>
  )
};

export default breeds;