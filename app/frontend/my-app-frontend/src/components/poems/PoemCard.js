import React from "react";
import Poem from "../poems/Poem";

function PoemsContainer({poems, removePoem, addToFavorites}) {
  return (
    <div className="poems-container">
      {poems.map(poem => {
        return (
          <Poem 
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

export default PoemsContainer;

