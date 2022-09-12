import React, { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';


const poemAPI = "http://localhost:9292/poems";


function EditPoem() {
  
  const [poemData, setPoemData] = useState({})
  let { id } = useParams()
  let poem_url = `http://localhost:9292/poems/${id}`;

  useEffect(()=>{
      fetch(poem_url)
      .then(response=>response.json())
      .then(data=>setPoemData(data))
  },[])
 
    console.log(poemData)

    let navigate = useNavigate();

    const handleSubmit = (e) =>{
      e.preventDefault()
      e.stopPropagation()
        fetch(`${poemAPI}/${id}`, {
            method: "PATCH",
            headers: {
              'content-type': 'application/json',
              "Access-Control-Allow-Origin" : "*",  
              "Access-Control-Allow-Credentials" : true 
            },
            body: JSON.stringify({
                title: poemData.title,
                body: poemData.body,
                authors_id: poemData.authors_id,
                categories_id: poemData.categories_id
            })
          })
          .then(response=>response.json())
          .then(data=>{
          console.log(data)})
          navigate(`/poems`)
        };
      
      const onFormChange = (e) => {
          setPoemData({...poemData,[e.target.name]:e.target.value});
      };
    

  return (
    <div className = 'container'>
     <form className="new-poem-form" onSubmit={handleSubmit} >
        <input 
          placeholder="Title" 
          name='title'
          value={poemData.title}
          type = "text"
          onChange={onFormChange}
        />

        <textarea 
          placeholder="Write your masterpiece here..." 
          rows={10} 
          value={poemData.body}
          name='body'
          type = "text"
          onChange={onFormChange}
        />
        
        <input 
          type="submit" 
          value="Update" 
        />
    </form>
    </div>
  );
}

export default EditPoem;
