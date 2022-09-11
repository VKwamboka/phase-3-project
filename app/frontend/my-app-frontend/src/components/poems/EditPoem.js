import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
// import swal from 'sweetalert';

const poemAPI = "http://localhost:9292/poems";
const pauthorAPI = "http://localhost:9292/poemauthors";

function EditPoem({addPoem},props) {
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [authors_id, setAuthor] = useState("");
  const [name, setName] = useState("");
  const [categories_id, setCategory] = useState("");

  const navigate = useNavigate();

//   useEffect(() => {
//     const poem_id = props.match.params.id;
//     axios.get(`/api/editpoem/${poem_id}`).then(res=>{
//         if(res.data.status === 200){
//             setTitle(res.data.title)
//             setBody(res.data.body)
//         }
//         else if(res.data.status === 400){
//           console.log("error")
//           navigate('/poems')
//         }
//     }) 
//   }, [props.match.params.id])
  


  function handleSubmit(e) {
    e.persist();
    e.preventDefault();
    fetch(poemAPI, {
      method: "PATCH",
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
    //   .then((newPoem) => addPoem(newPoem));
    .then(res=>{
                if(res.data.status === 200){
                    setTitle(res.data.title)
                    setBody(res.data.body)
                }
                else if(res.data.status === 400){
                  console.log("error")
                  navigate('/poems')
                }
            }) 

      setTitle({...title,[e.target.name]: e.target.value});
      setBody({...body,[e.target.name]: e.target.value});
      setAuthor({...authors_id,[e.target.name]: e.target.value});
      setCategory({...categories_id,[e.target.name]: e.target.value});
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
        onChange={(e) => setBody(e.target.value)}
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
        value="Update" 
      />
    </form>
  );
}

export default EditPoem;
