import React from "react";
import Navbar from "../navbar/Navbar";
import PoemCont from "../poems/PoemCont";
import Home from "../home/Home";
import InspirationCard from "../inspirations/InspirationCard";
import CategoryCard from "../pcategories/CategoryCard";
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import Collection from "../poems/Collection";
import Search from "../search/Search";
import AuthorCard from "../authors/AuthorCard";
import EditPoem from "../poems/EditPoem";
import EditInspiration from "../inspirations/EditInspiration";


function App() {
  
  return (
    <Router>
      <div>
        <Navbar/>
      </div>
      <Routes>
        <Route exact path='/' element={<Home/>}/>
        <Route exact path='/poems' element={<PoemCont/>}/>
        <Route exact path='/inspirations' element={<InspirationCard/>}/>
        <Route exact path='/categories' element={<CategoryCard/>}/>
        {/* <Route exact path='/collection's element={<Collection/>}/> */}
        <Route exact path='/search' element={<Search/>}/>
        <Route exact path='/authors' element={<AuthorCard/>}/>
        <Route exact path='/editpoem/:id' element={<EditPoem/>}/>
        <Route exact path='/edit/:id' element={<EditInspiration/>}/>
        <Route exact path='/editpoem/:id' element={<EditPoem/>}/>
        {/* <Route exact path='/edit_poem/:id' element={<EditPoem/>}/> */}
      </Routes>
    </Router>
  );
}
    
export default App;