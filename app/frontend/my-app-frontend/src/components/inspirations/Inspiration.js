import React, { useState } from 'react';

const poemAPI = "http://localhost:9292/poems";



function Inspiration({poem, removePoem, addToFavorites}) {
  const {title, body, authors_id} = poem;
  const [isRead, setIsRead] = useState(false)

  function onDeleteClick(e) {
    e.preventDefault();
    fetch(`${poemAPI}/${poem.id}`, {
      method: "DELETE",
    });
    removePoem(poem);
  }

  


  
  const authorAPI =`http://localhost:9292//poemauthors/${authors_id}`
  

  return (
    <div>
      <h3>{title}</h3>
      <p>{body}</p>
      <p>
        <strong>- By {authors_id}</strong>
      </p>
      <button onClick={() => setIsRead(!isRead)} >
        Mark as {isRead ? "unread" : "read" }
      </button>

      <button onClick={onDeleteClick} >
        Delete
      </button>

      <button onClick={() => addToFavorites(poem)}>
        {poem.isFavorite ? "Unfavorite" : "♥ Favorite" }
      </button>
    </div>
  );
}

export default Inspiration;
