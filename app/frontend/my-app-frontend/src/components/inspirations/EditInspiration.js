import React, { useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';


const quoteAPI = "http://localhost:9292/inspirations";

export default function EditInspiration({addQuote}) {
   
        const [title, setTitle] = useState("");
        const [body, setBody] = useState("");
        const [authors_id, setAuthor] = useState("");
        const [categories_id, setCategory] = useState("");
      
        function handleSubmit(e) {
            e.persist();
          e.preventDefault();
            

          fetch(quoteAPI, {
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
            .then((newQuote) => addQuote(newQuote));
      
          setTitle({...title,[e.target.name]: e.target.value});
          setBody({...body,[e.target.name]: e.target.value});
          setAuthor({...authors_id,[e.target.name]: e.target.value});
          setCategory({...categories_id,[e.target.name]: e.target.value});
        }
      
  return (
    <div className='container'>
      <form className="new-poem-form" onSubmit={handleSubmit} >
        <input 
          placeholder="Title" 
          value={title}
          onChange={(e) => setTitle(e.target.value)}
        />

        <input 
          placeholder="Author" 
          value={authors_id}
          onChange={(e) => setAuthor(e.target.value)}
        />

        <textarea 
          placeholder="Write your masterpiece here..." 
          rows={10} 
          value={body}
          onChange={(e) => setBody(e.target.value)}
        />
        
        <input 
          type="submit" 
          value="Update" 
        />
    </form>
    </div>
  )
}


