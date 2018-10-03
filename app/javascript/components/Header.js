import React from "react"
import PropTypes from "prop-types"
class Header extends React.Component {
  render () {
    return (
      <header className="main">
        <div class="navigation">
          <img className="logo" src={this.props.img_src} />
          <ul>
            <li>Home</li>
            <li>Featured Posts</li>
            <li>Contact</li>
            <li>Join The List</li>
          </ul>
        </div>
      </header>
    );
  }
}

export default Header
