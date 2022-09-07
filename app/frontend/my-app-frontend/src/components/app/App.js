import React from "react";
import Navbar from "../navbar/Navbar";
import PoemCont from "../poems/PoemCont";
import Home from "../home/Home";
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'

function App() {
  
  return (
    <Router>
      <div>
        <Navbar/>
      </div>
      <Routes>
        <Route exact path='/' element={<Home/>}/>
        <Route exact path='/poems' element={<PoemCont/>}/>

      </Routes>
    </Router>
  );
}
    
export default App;