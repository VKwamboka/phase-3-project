import React, { useState } from 'react';

const inspirationAPI = "http://localhost:9292/inspirations";



function Inspiration({quote, removeQuote, addToFavorites}) {
  const {title, body, authors_id} = quote;
  const [isRead, setIsRead] = useState(false)

  function onDeleteClick(e) {
    e.preventDefault();
    fetch(`${inspirationAPI}/${quote.id}`, {
      method: "DELETE",
    });
    removeQuote(quote);
  }

  


  
  const authorAPI =`http://localhost:9292//poemauthors/${authors_id}`
  

  return (
    <div>
      <h3>{title}</h3>
      <p className='pbody'>{body}</p>
      <p>
        <strong>- By {authors_id}</strong>
      </p>
      <button onClick={() => setIsRead(!isRead)} >
        Mark as {isRead ? "unread" : "read" }
      </button>

      <button onClick={onDeleteClick} >
        Delete
      </button>

      <button onClick={() => addToFavorites(quote)}>
        {quote.isFavorite ? "Unfavorite" : "♥ Favorite" }
      </button>
    </div>
  );
}

export default Inspiration;
