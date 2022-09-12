import React, { useState, useEffect } from 'react';
import { useNavigate, useParams } from 'react-router-dom';


const inspirationAPI = "http://localhost:9292/inspirations";

export default function EditInspiration({quotes}) {
   
  // const [title, setTitle] = useState("");
  // const [body, setBody] = useState("");
  // const [authors_id, setAuthor] = useState("");
  // const [categories_id, setCategory] = useState("");
  // const {title, body, authors_id} = quotes;

    const [quoteData, setQuoteData] = useState({})
    let { id } = useParams()
    let quote_url = `http://localhost:9292/inspirations/${id}`;
    useEffect(()=>{
        fetch(quote_url)
        .then(response=>response.json())
        .then(data=>setQuoteData(data))
    },[])
     let navigate = useNavigate();
      console.log(quoteData)

      const handleSubmit = (e) =>{
        e.preventDefault()
        e.stopPropagation()
          fetch(`${inspirationAPI}/${id}`, {
              method: "PATCH",
              headers: {
                'content-type': 'application/json'
              },
              body: JSON.stringify({
                  title: quoteData.title,
                  body: quoteData.body,
                  authors_id: quoteData.authors_id,
                  categories_id: quoteData.categories_id
              })
            })
            .then(response=>response.json())
            .then(data=>{
              console.log(data)
            navigate(`/inspirations`)

            // setTitle({...title,[e.target.name]: e.target.value});
            // setBody({...body,[e.target.name]: e.target.value});
            // setAuthor({...authors_id,[e.target.name]: e.target.value});
            // setCategory({...categories_id,[e.target.name]: e.target.value});
          })
        
            };
        
        const onFormChange = (e) => {
            setQuoteData({...quoteData,[e.target.name]:e.target.value});
        };
      

  return (
    <div className='container'>
      <form className="new-poem-form" onSubmit={handleSubmit} >
        <input 
          placeholder="Title" 
          // value={title}
          // {...title}
          value={quoteData.title}
          onChange={onFormChange}
        />

        <textarea 
          placeholder="Write your masterpiece here..." 
          rows={10} 
          // value={body}
          value={quoteData.body}
          // onChange={(e) => setBody(e.target.value)}
          onChange={onFormChange}
          // onChange={(e) => setBody(e.target.value)}
        />
        
        <input 
          type="submit" 
          value="Update" 
        />
    </form>
    </div>
  )
}

