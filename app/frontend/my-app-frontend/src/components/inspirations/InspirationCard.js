import React, { useState, useEffect } from 'react';
import InspirationContainer from './InspirationContainer';
import NewInspirationForm from './NewInspirationForm';

const poemAPI = "http://localhost:9292/inspirations";
// id, title, content, author

function InspirationCard() {
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

  function removePoem(poemToRemove) {
    setPoems(poems.filter(poem => poem.id !== poemToRemove.id))
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
        <InspirationContainer 
          poems={poemsToDisplay} 
          removePoem={removePoem} 
          addToFavorites={addToFavorites}
        />
      )
    }
  }

  return (
    <div className="app">
      <div className="sidebar">
        <button 
          onClick={() => setFormVisible(!formVisible)} >
          Show/hide new poem form
        </button>
        {formVisible ? <NewInspirationForm addPoem={addPoem} /> : null}

        <button onClick={() => setFavoriteVisible(!favoriteVisible)} >
          Show/hide Favorite Poems
        </button>
      </div>
      {renderPoemView()}
    </div>
  );
}

export default InspirationCard;