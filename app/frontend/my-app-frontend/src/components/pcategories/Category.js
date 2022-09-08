import React, { useState } from 'react';

const poemAPI = "http://localhost:9292/poemcategories";



function Category({poem, removePoem}) {
  const {name} = poem;
  const [isRead, setIsRead] = useState(false)

  function onDeleteClick(e) {
    e.preventDefault();
    fetch(`${poemAPI}/${poem.id}`, {
      method: "DELETE",
    });
    removePoem(poem);
  }
  

  return (
    <div>
         <div class="card">
        <div class="card-body">
        <p className='pbody'>{name} poems</p>
            <button onClick={() => setIsRead(!isRead)} >
                Edit {isRead ? "unread" : "read" }
            </button>

            <button onClick={onDeleteClick} >
                Delete
            </button>

        </div>
    </div>
</div>
  );
}

export default Category;
