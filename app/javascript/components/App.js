import React from "react"
import PropTypes from "prop-types"

class App extends React.Component {
  render() {
    console.log("logged in:", this.props.logged_in)
    console.log("current user:", this.props.current_user)
    console.log("sign up:", this.props.new_user_route)
    console.log("sign in:", this.props.sign_in_route)
    console.log("sign out:", this.props.sign_out_route)
    return (
      <>
        <h1>Kick Ass Apartment App!</h1>
      </>
    )
  }
}

export default App