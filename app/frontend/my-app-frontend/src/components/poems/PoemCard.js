import React from "react";
import Poem from "../poems/Poem";

function PoemsContainer({poems, removePoem, addToFavorites,handleUpdateItem}) {
  return (
    <div className="poems-container">
      {poems.map(poem => {
        return (
          <Poem 
            key={poem.id} 
            poem={poem} 
            removePoem={removePoem} 
            addToFavorites={addToFavorites} 
            handleUpdateItem={handleUpdateItem}
          />
        )
        })}
    </div>
  );
}

export default PoemsContainer;

