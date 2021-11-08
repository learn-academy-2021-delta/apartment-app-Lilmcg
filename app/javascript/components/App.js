import React, { Component} from 'react'
import Home from './pages/Home'
import Header from './components/Header'
import Footer from './components/Footer'
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Routes,
  Route
} from 'react-router-dom'


class App extends Component {
  render() {
    return (
      <Router>
        <Header {...this.props} />
        <Routes>
          <Route exact path="/" element={<Home />} />
          <Route path="/users/sign_in" />
        </Routes>
        <Footer />
      </Router>
    )
  }
}

export default App