import React from "react"
import PropTypes from "prop-types"
class Header extends React.Component {
  render () {
    return (
      <header className="main">
        <ul>
          <li>Foo</li>
          <li>Bar</li>
          <li>Bat</li>
          <li>Baz</li>
        </ul>
      </header>
    );
  }
}

export default Header
