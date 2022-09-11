import React, { useState } from 'react';
import {Link} from 'react-router-dom';

const poemAPI = "http://localhost:9292/poems";



function Poem({poem, removePoem, addToFavorites}) {
  const {title, body, authors_id, categories_id} = poem;
  const [isRead, setIsRead] = useState(false)

  function onDeleteClick(e) {
    e.preventDefault();
    fetch(`${poemAPI}/${poem.id}`, {
      method: "DELETE",
    });
    removePoem(poem);
  }
  const authorAPI =`http://localhost:9292//poemauthors/`
 

  return (
    <div>
      <h3>{title}</h3>
      <p className='pbody'>{body}</p>
      <p>
        <strong>- By {authors_id}</strong>
        {/* <select> </select> */}
      </p>
      <p>
        <strong>- Category: {categories_id}</strong>

      </p>
      <button onClick={() => setIsRead(!isRead)} >
      <Link className='nav-link' to={`/editpoem/${poem.id}`}>Edit</Link>
        {/* Mark as {isRead ? "unread" : "read" } */}
      </button>

      <button onClick={onDeleteClick} >
        Delete
      </button>

      <button onClick={() => addToFavorites(poem)} >
        {poem.isFavorite ? "Unfavorite" : "♥ Favorite" }
      </button>
    </div>
  );
}

export default Poem;
