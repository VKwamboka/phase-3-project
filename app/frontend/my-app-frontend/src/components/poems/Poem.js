// import React, {useState } from "react";

// function Poem({poemTitle, poemContent, poemAuthor}) {
 
//   const [value, setValue] = useState(
//         "Mark as read"
//       );
    
//       function handleText() {
//         const newText = "Mark as unread";
//         setValue(newText); 
//         if(value === newText){
//           setValue("Mark as read")
//         }
//       }


//   return (
//     <div>
//       <h3>{poemTitle}</h3>
//       <p>{poemContent}</p>
//       <p>
//         <strong>- By {poemAuthor}</strong>
//       </p>
//       <button onClick = {handleText }>{value}</button>
//       <button>Add Favourite</button>
//     </div>
//   );
// }

// export default Poem;

import React, { useState } from 'react';

const poemAPI = "http://localhost:9292/poems";



function Poem({poem, removePoem, addToFavorites}) {
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

export default Poem;
