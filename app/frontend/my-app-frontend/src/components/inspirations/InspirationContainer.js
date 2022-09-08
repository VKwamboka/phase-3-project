import React from "react";
import Inspiration from "../inspirations/Inspiration";

function InspirationContainer({poems, removePoem, addToFavorites}) {
  return (
    <div className="poems-container">
      {poems.map(poem => {
        return (
          <Inspiration
            key={poem.id} 
            poem={poem} 
            removePoem={removePoem} 
            addToFavorites={addToFavorites} 
          />
        )
        })}
    </div>
  );
}

export default InspirationContainer;

