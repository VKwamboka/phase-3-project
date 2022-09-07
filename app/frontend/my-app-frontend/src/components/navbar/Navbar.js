import React from 'react'
import {Link} from 'react-router-dom'
// import {BrowserRouter as Router} from 'react-router-dom'

export default function Navbar() {
  return (
   <nav className='navbar navbar-expand-lg bg-lig'>
    {/* <Router> */}
    <div className='container-fluid'>
    <ul className='navbar-nav'>
    {/* <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR849Ce5R2mqbXZcTw3Ctu8lbqAC0VE8SMFCg&usqp=CAU"  height="1rem" width="3rem" /> */}
            <li className='nav-item'>
                <Link className='nav-link' to='/'>Home</Link>
            </li>
            <li className='navbar-nav'>
                <Link className='nav-link' to='/poems'>Poems</Link>
            </li>
            <li className='navbar-nav'>
                <Link className='nav-link' to='/displayrecipe'>Inspirations</Link>
            </li>
            <li className='navbar-nav'>
                <Link className='nav-link' to='/favourites'>Categories</Link>
            </li>
            <li className='navbar-nav'>
                <Link className='nav-link' to='/favourites'>Authors</Link>
            </li>


        </ul>
        
    </div>
       
    {/* </Router> */}
   </nav>
    
  )
}
