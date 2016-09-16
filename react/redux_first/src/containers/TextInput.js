import React, {Component} from 'react';

import {connect} from 'react-redux';
import * as actions from '../actions'

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

    render() {
        return (
            <div>
                <br></br>
                <input onChange={this.handleChange}></input>
                <div>{this.props.text}</div>
            </div>
        );
    }
}

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
