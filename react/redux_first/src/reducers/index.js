import {combineReducers} from 'redux';
import counter from './counter'
import ui from './ui'
import textChange from './textChange'

const reducers = combineReducers({counter, ui, textChange});

export default reducers;
