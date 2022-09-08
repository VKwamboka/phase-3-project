import React from "react";
import Category from "./Category";

function CategoryContainer({poems, removePoem, addToFavorites}) {
  return (
    <div className="poems-container">
      {poems.map(poem => {
        return (
          <Category
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

export default CategoryContainer;

