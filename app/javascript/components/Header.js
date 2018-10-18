import React from "react"
import PropTypes from "prop-types"
class Header extends React.Component {
  render () {
    return (
      <React.Fragment>
        <nav className="global">
          <div className="logo">
            <a href="/">
              <img src={this.props.img_src} />
            </a>
          </div>
          <ul className="links">
            <li><a href="http://www.eventfarm.com">About Us</a></li>
            <li className="special"><a href="http://www.eventfarm.com/request-a-demo">Request a Demo</a></li>
          </ul>
        </nav>
        <header className="main">
          <div className="title">
            <h3>The Check In</h3>
            <h5>Thoughts about events, marketing, tech and whatever else draws our eye.<br/>Made by the people behind Event Farm.</h5>
          </div>
        </header>
      </React.Fragment>
    );
  }
}

export default Header
