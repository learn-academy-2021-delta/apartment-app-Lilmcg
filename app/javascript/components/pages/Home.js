import React, { Component } from 'react'
import homeimage from '../assets/homeimage.jpg'

class Home extends Component {
  render() {
    return (
      <div className="page-body">
      <h3>Welcome to City Scape Apartments</h3>
      <br />
      <img src={homeimage} alt="bluish apartment interior" className="homeimage" />
      </div>
    )
  }
}
export default Home