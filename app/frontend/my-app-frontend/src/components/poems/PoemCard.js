// import React,{useState, useEffect} from "react";
// import NewPoemForm from "./NewPoemForm";
// import Poem from "./Poem";

// const POEM_URL = "http://localhost:9292/poems"

// function PoemsContainer() {

//   const [poems, setPoems] = useState([]);
//   const [view,setView] = React.useState(true);
//   const [favoriteVisible, setFavoriteVisible] = useState(true);
// //   const poemsToDisplay = poems.filter((poem) => favoriteVisible || poem.isFavorite);

//   const poemFetcher = () =>{
//         fetch(POEM_URL)
//         .then((r) => r.json())
//         .then((data) =>{
//         setPoems (data.poems)
//         console.log(data)
//         })
//     }

//   useEffect(
//     poemFetcher, []
//   )

// //   function addToFavorites(favPoem) {
// //     setPoems(poems.map(poem => {
// //       return poem.id === favPoem.id ? {...favPoem, isFavorite: !favPoem.isFavorite} : poem
// //       }  
// //     ))
// //   }

//   function handleAddItem(newItem) {
//     setPoems([...poems, newItem]);
//   }

 

// //   let poemCards = poems.map((poem) => (<Poem poemTitle = {poem.title} poemAuthor={poem.author} poemContent={poem.body} key={poem.id}/>))
//   return (
//     <div className="app">
   
//       <div className="sidebar">
//         <button  onClick={()=>setView(!view)}>Show/hide new poem form</button>
//         {view ? <NewPoemForm onAddItem ={handleAddItem}/> : null}
//         <button onClick={() => setFavoriteVisible(!favoriteVisible)} >
//           Show/hide Favorite Poems
//         </button>
//       </div>      

//       <div className="poems-container">
//         {/* {poemCards} */}
//       </div>

//     </div>

    
//   );
// }

// export default PoemsContainer;

import React from "react";
import Poem from "../poems/Poem";

function PoemsContainer({poems, removePoem, addToFavorites}) {
  return (
    <div className="poems-container">
      {poems.map(poem => {
        return (
          <Poem 
            key={poem.id} 
            poem={poem} 
            removePoem={removePoem} 
            addToFavorites={addToFavorites} 
          />
        )
        })}
    </div>
  );
}

export default PoemsContainer;

