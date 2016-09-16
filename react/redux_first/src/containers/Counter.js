import React, {Component} from 'react';

import Value from '../components/Value';
import Controls from '../components/Controls';

import {connect} from 'react-redux';

import {increment, decrement, setColor, textChange} from '../actions'

class Counter extends Component {
    constructor(props) {
        super(props);
        this.setRandomColor = this.setRandomColor.bind(this);
    }

    setRandomColor() {
        const color = [
            Math.floor((Math.random() * 55) + 200),
            Math.floor((Math.random() * 55) + 200),
            Math.floor((Math.random() * 55) + 200)
        ];
        this.props.handleSetColor(color);
    }

    render() {

        const color = this.props.color;
        const style = {
            background: `rgb(${color[0]},${color[1]},${color[2]})`
        };

        return (
            <div style={style}>
                <Value number={this.props.number} title={this.props.title} u={this.props.u}/>
                <Controls onPlus={this.props.handleIncrement} onSubtract={this.props.handleDecrement} onRandomizeColor={this.setRandomColor} onTextChanger={this.props.handleTextChanger}/>
            </div>
        );
    }
}

const mapStateToProps = (state) => {
    return {number: state.counter.number, color: state.ui.color, title: state.counter.title, u: state.counter.dumbObject.u};
}

const mapDispatchToProps = (dispatch) => {
    // return bindActionCreators(actions, dispatch);
    return {
        handleIncrement: () => {
            dispatch(increment())
        },
        handleDecrement: () => {
            dispatch(decrement())
        },
        handleSetColor: (color) => {
            dispatch(setColor(color))
        },
        handleTextChanger: (title) => {
            dispatch(textChange(title))
        }
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Counter);
