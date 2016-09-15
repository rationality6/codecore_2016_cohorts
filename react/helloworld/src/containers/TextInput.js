import React, { Component, PropTypes } from 'react';
const propTypes = {

};
const defaultProps = {

};
class TextButton extends Component {
  constructor(props) {
    super(props);
  }


// SUDO CODE!!!!!!!
 onSubmit = (event) => {
     // Write the udpateTextOnList action
     // action shoudl dispatch to reducer to update the state
     // of the text I wanted to change on the list
   this.props.updateTextOnList(event.target.input.value)
 }


updateTextInput = () => {

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
