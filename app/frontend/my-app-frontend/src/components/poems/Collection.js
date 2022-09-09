import React, { useState, useEffect } from 'react';
import CategoryContainer from '../pcategories/CategoryContainer';
import NewCategoryForm from '../pcategories/NewCategoryForm';
import PoemsContainer from './PoemCard';

const poemAPI = "http://localhost:9292/poemcategories";
// id, title, content, author

function Collection() {
  const [poems, setPoems] = useState([]);
  const [formVisible, setFormVisible] = useState(true);
  const [favoriteVisible, setFavoriteVisible] = useState(true);
  const poemsToDisplay = poems.filter((poem) => favoriteVisible || poem.isFavorite);

  useEffect(() => {
    fetch(poemAPI)
      .then(res => res.json())
      .then(data => setPoems(data))
  }, []);

  function addPoem(newPoem) {
    setPoems([...poems, newPoem]);
  }


  function addToFavorites(favPoem) {
    setPoems(poems.map(poem => {
      return poem.id === favPoem.id ? {...favPoem, isFavorite: !favPoem.isFavorite} : poem
      }  
    ))
  }

  function renderPoemView() {
    if (poemsToDisplay.length === 0 && !favoriteVisible) {
      return (<h1>You have no favorites added</h1>)
    } else {
      return (
        <PoemsContainer
          addToFavorites={addToFavorites}
        />
      )
    }
  }

  return (
    <div className="app">
      <div className="sidebar">
            {formVisible ? <NewCategoryForm addPoem={addPoem} /> : null}
        <button onClick={() => setFavoriteVisible(!favoriteVisible)} >
          Show/hide Favorite Poems
        </button>
      </div>  
      {renderPoemView()}
    </div>
  );
}

export default Collection;