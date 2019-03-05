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
            <li><a href="https://blog.eventfarm.com/">Blog Home</a></li>
            <li className="special"><a href="http://www.eventfarm.com/request-a-demo">Request a Demo</a></li>
            <li><a href="/subscribe">Subscribe</a></li>
          </ul>
        </nav>
      </React.Fragment>
    );
  }
}

export default Header
