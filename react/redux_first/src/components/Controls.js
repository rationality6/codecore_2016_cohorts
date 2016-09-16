import React, {Component, PropTypes} from 'react';

const propTypes = {
    onPlus: PropTypes.func,
    onSubtract: PropTypes.func,
    onRandomizeColor: PropTypes.func,
    onTextChanger: PropTypes.func,
};

function createWarning(funcName) {
    return () => console.warn(funcName + 'is not defind');
}

const defaultProps = {
    onPlus: createWarning('onPlus'),
    onSubtract: createWarning('onSubtract'),
    onRandomizeColor: createWarning('onRandomizeColor'),
    onTextChanger: createWarning('onTextChanger'),
};

class Controls extends Component {

    constructor(props) {
        super(props);
        this.handleTextButtonClicked = this.handleTextButtonClicked.bind(this);
    }

    handleTextButtonClicked() {
        const newTitle = prompt()
        this.props.onTextChanger(newTitle)
    }

    render() {
        return (
            <div>
                <button onClick={this.props.onPlus}>+</button>
                <button onClick={this.props.onSubtract}>-</button>
                <button onClick={this.props.onRandomizeColor}>Randomize Color</button>
                <button onClick={this.handleTextButtonClicked}>Change Text</button>
            </div>
        );
    }
}
Controls.propTypes = propTypes;
Controls.defaultProps = defaultProps;
export default Controls;
