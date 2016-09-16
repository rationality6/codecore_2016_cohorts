import React, {Component} from 'react';
import Counter from '../containers/Counter'
import TextInput from '../containers/TextInput.js'

const propTypes = {};

const defaultProps = {};

class App extends Component {
    render() {
        return (
            <div>
                <Counter/>
                <TextInput/>
            </div>
        );
    }
}
App.propTypes = propTypes;
App.defaultProps = defaultProps;
export default App;
