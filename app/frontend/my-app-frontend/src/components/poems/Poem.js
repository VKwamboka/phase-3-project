import React, { useState, useEffect } from 'react';
import {Link} from 'react-router-dom';

const poemAPI = "http://localhost:9292/poems";



function Poem({poem, author, removePoem, addToFavorites}) {
  const {title, body, authors_id, categories_id} = poem;
  // const{name} = author
  const [isRead, setIsRead] = useState(false)

  function onDeleteClick(e) {
    e.preventDefault();
    fetch(`${poemAPI}/${poem.id}`, {
      method: "DELETE",
    });
    removePoem(poem);
  }
  

//   const authorAPI =`http://localhost:9292/poemauthors/${authors_id}`
//   const pauthors = useEffect(()=>{
//     fetch(authorAPI)
//     .then(response=>response.json())
//     .then(data=>console.log(data))
   
// },[])
// pauthors?.map(author=>{
//   if (author.id == authors_id){
//     authors_id = author.name
//   }
// })

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
