import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'

export default class Footer extends Component {
    render() {
        return (
            <footer>
        <ul>
          <NavLink to="/">&copy;Lillian McGillivray 2021</NavLink>
        </ul>
        </footer>
        )
    }
}