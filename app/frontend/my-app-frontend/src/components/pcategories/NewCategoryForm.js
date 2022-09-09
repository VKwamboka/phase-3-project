import React, { useState } from 'react';

const categoryAPI = "http://localhost:9292/poemcategories";

function NewCategoryForm({addPoem}) {
  const [name, setName] = useState("");
//   const [content, setContent] = useState("");
//   const [author, setAuthor] = useState("");

  function handleSubmit(e) {
    e.preventDefault();
    fetch(categoryAPI, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({name}),
    })
      .then((r) => r.json())
      .then((newPoem) => addPoem(newPoem));

    setName("");
    // setContent("");
    // setAuthor("");
  }

  return (
    <form className="new-poem-form" onSubmit={handleSubmit} >
      <input 
        placeholder=" Category" 
        value={name}
        onChange={(e) => setName(e.target.value)}
      />
      
      <input 
        type="submit" 
        value="Add" 
      />
    </form>
  );
}

export default NewCategoryForm;
