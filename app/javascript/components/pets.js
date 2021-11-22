import React from "react";

const pets = (props) => {
  const renderPets = () => {
    return props.pets.map((pet) => {
      return (
        <div>
          <h1>{pet.name}</h1>
          <p><a href = {`/pets/${pet.id}`}>View</a></p>
          <p><a href = {`/pets/${pet.id}/breeds`}>View Breeds</a></p>
          <p><a href = {`/pets/${pet.id}/edit`}>Edit</a></p>
        </div>
      )
    });
  };
  return (
    <div>
      <a href = {`/pets/new`}>Create a New Pet</a>
      <p>Pets Here: {renderPets()}</p>
    </div>
  );
};

export default pets;