import React from 'react';
import ReactDOM from 'react-dom';
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";
import './index.css';
import './Style.css';

import FirstPage from './components/FirstPage'
import Fisa from './components/Fisa';
import AfisareCarte from './components/AfisareCarte';
import Carti from './components/Carti';

import reportWebVitals from './reportWebVitals';
import AfisareCategorii from './components/AfisareCategorii';
import Membrii from './components/Membrii';
import Imprumuturi from './components/Imprumuturi';
import CategoriiMeniu from './components/CategoriiMeniu';

ReactDOM.render(
  <React.StrictMode>

    <Router>
      <Switch>

          <Route exact path= "/" >
            <FirstPage />
          </Route>

          <Route exact path= "/Carti">
            <Carti />
          </Route>

          <Route exact path= "/Membrii">
            <Membrii />
          </Route>

          <Route exact path= "/Imprumuturi">
            <Imprumuturi />
          </Route>

          <Route exact path= "/Categorii">
            <CategoriiMeniu />
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
