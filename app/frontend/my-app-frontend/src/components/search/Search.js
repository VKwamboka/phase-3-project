import React,{useState, useEffect} from 'react'
import Poem from "../poems/Poem";
import PoemCont from "../poems/PoemCont";

const SEARCH_URL ='http://localhost:9292/poemstitles/'

export default function Search() {

  const [searchItem, setSearchItem] = useState("")
  const [counter, setCounter] = useState(0)
  const [results, setResults] = useState(0)
  // const {title, body, authors_id, categories_id} = poem;
  const [poems, setPoems] = useState([]);
// json-server --watch db.json -p 8004

  const handleSearch = (event) => {
    setSearchItem(event.target.value)
  }

  const handleSubmit = (event) => {
      event.preventDefault()
      setCounter(counter + 1)
  }

  const searchInfo = () => {

    const actualSearch = SEARCH_URL + searchItem

    fetch(actualSearch)
    .then((response) => response.json())
    .then((data) => {
        setResults(data.poems == null ? 0 : data.poems.length )
        setSearchItem("")
        setPoems (data.poems)
        console.log(data)
    }).catch(error =>{
      console.log(error)
    })
}

useEffect(
    searchInfo, [ counter]
)

let card =  poems?.map(poem =>{
  return(

    <div>
      <h3>{poem.title}</h3>
    </div>
  
  )
})

console.log(card)
  return (
    <div className='container'>

      <h3 className='mt-4'>SEARCH FOR POEMS & INSPIRATIONAL QUOTES</h3>
      <form onSubmit={handleSubmit}>
        {/* <label htmlFor="search" className="form-label">SEARCH DRINK</label> */}
       
        <input type="text" className="form-control" id="search" name="search" placeholder='Search by name/author/category' value={searchItem} onChange={handleSearch}/>
      </form>
      
     
        <hr className='class1'/>
        <br/>
      <div >
      {/* <div className="poems-cotainer"> */}
      <h3>{results} Poems found</h3>
      {card}
     
      </div>
  
      {/* </div> */}

    </div>
  )
}
