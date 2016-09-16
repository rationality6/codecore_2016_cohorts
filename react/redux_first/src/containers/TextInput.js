import React, {Component, PropTypes} from 'react';

import {connect} from 'react-redux';
import * as actions from '../actions'

const propTypes = {};
const defaultProps = {};

class TextButton extends Component {
    constructor(props) {
        super(props);
        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(event) {
        console.log(event.target.value);
        this.props.handleTextChanger(event.target.value)
        // this.props.updateTextOnList(event.target.input.value)
    }

    updateTextInput = () => {}

    render() {
        console.log(this.props)
        return (
            <div>
                <br></br>
                <input onChange={this.handleChange}></input>
                <div>{this.props.text}</div>
            </div>
        );
    }
}
TextButton.propTypes = propTypes;
TextButton.defaultProps = defaultProps;

const mapStateToProps = (state) => {
    console.log('state tree',state)
    return {text: state.textChange.text}
}

const mapDispatchToProps = (dispatch) => {
    return {
        handleTextChanger(text){
            dispatch(actions.handleChange(text))
        },
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(TextButton);
