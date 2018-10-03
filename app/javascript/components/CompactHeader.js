import React from "react"
import PropTypes from "prop-types"
class CompactHeader extends React.Component {
  render () {
    return (
      <React.Fragment>
        <nav className="compact-header">
          <div className="logo">
            <a href="/">
              <img src={this.props.img_src} />
            </a>
          </div>
          <ul className="links">
            <li><a href="http://www.eventfarm.com">About Us</a></li>
            <li className="special"><a href="http://www.eventfarm.com/request-a-demo">Try Event Farm</a></li>
          </ul>
        </nav>
      </React.Fragment>
    );
  }
}

export default CompactHeader
