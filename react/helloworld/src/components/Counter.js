import React, {Component, PropTypes} from 'react';

import Value from './Value';
import Control from './Control';

import {connect} from 'react-redux';

const propTypes = {};
const defaultProps = {};
class Counter extends Component {
    constructor(props) {
        super(props);
    }
    render() {
        return (
            <div>
                <Value></Value>
                <Control></Control>
            </div>
        );
    }
}

Counter.propTypes = propTypes;
Counter.defaultProps = defaultProps;

const mapStateToProps = (state) => {
    
}

export default Counter;
