import React from 'react';
import ReactDOM from 'react-dom';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";
import './index.css';

import FirstPage from './FirstPage'
import AddBook from './AddBook';
import AddUser from './AddUser';
import AfisareUseri from './AfisareUseri';
import Fisa from './Fisa';
import AfisareCarte from './AfisareCarte';
import ToateCartile from './ToateCartile';
import RentBooks from './RentBooks';
import FinRent from './FinRent';
import Home from './Home';

import reportWebVitals from './reportWebVitals';
import AddRent from './AddRent';
import AfisareCategorii from './AfisareCategorii';


ReactDOM.render(
  <React.StrictMode>

    <Router>
      <Switch>


          <Route exact path= "/" >
            <Home />
          </Route>

          <Route exact path= "/Administrare" >
            <FirstPage />
          </Route>

          <Route exact path= "/AddBook">
            <AddBook />
          </Route>

          <Route exact path= "/AddUser">
            <AddUser />
          </Route>

          <Route exact path= "/AddRent">
            <AddRent />
          </Route>

          <Route exact path= "/FinRent">
            <FinRent />
          </Route>

          <Route path="/AfisareUseri">
            <AfisareUseri />
          </Route>

          <Route path="/ToateCartile">
            <ToateCartile />
          </Route>

          <Route path="/RentBooks">
            <RentBooks />
          </Route>

          <Route path="/fisa/:user">
            <Fisa />
          </Route>

          <Route path="/search/:titlu">
            <AfisareCarte />  
          </Route>

          <Route path="/categorii/:categorie">
            <AfisareCategorii />  
          </Route>
        
        
        </Switch>
    </Router>
        
        
  </React.StrictMode>,
  document.getElementById('root')
);

reportWebVitals();
