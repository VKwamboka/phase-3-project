import React, { useState } from 'react';


const poemAPI = "http://localhost:9292/poems";
const pauthorAPI = "http://localhost:9292/poemauthors";

function NewPoemForm({addPoem}) {
  const [title, setTitle] = useState("");
  const [body, setContent] = useState("");
  const [authors_id, setAuthor] = useState("");
  const [name, setName] = useState("");
  const [categories_id, setCategory] = useState("");

  function handleSubmit(e) {
    e.preventDefault();
    fetch(poemAPI, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        title,
        body,
        authors_id,
        categories_id,
      }),
    })
      .then((r) => r.json())
      .then((newPoem) => addPoem(newPoem));

    setTitle("");
    setContent("");
    setAuthor("");
    setCategory("");
  }

  return (
    <form className="new-poem-form" onSubmit={handleSubmit} >
      <input 
        placeholder="Title" 
        value={title}
        onChange={(e) => setTitle(e.target.value)}
      />

    
      <textarea 
        placeholder="Write your masterpiece here..." 
        rows={10} 
        value={body}
        onChange={(e) => setContent(e.target.value)}
      />

      <input 
        placeholder="Author" 
        value={authors_id}
        onChange={(e) => setAuthor(e.target.value)}
      />

      <input 
        placeholder="Category" 
        value={categories_id}
        onChange={(e) => setCategory(e.target.value)}
      />

      
      <input 
        type="submit" 
        value="Share your masterpiece" 
      />
    </form>
  );
}

export default NewPoemForm;
