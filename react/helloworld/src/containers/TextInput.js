import React, { Component, PropTypes } from 'react';
const propTypes = {

};
const defaultProps = {

};
class TextButton extends Component {
  constructor(props) {
    super(props);
  }
  render() {
    return(
        <div>
            <br></br>
            <input></input>
            <div>TextButton</div>
        </div>
    );
  }
}
TextButton.propTypes = propTypes;
TextButton.defaultProps = defaultProps;
export default TextButton;
