import * as types from '../actions/ActionTypes';

const initialState = {
    text: ""
}

export default function text(state = initialState, action) {
    switch (action.type) {
        case types.TEXT_TYPE:
            return {
                ...state,
                text: action.text
            }
        default:
            return state;
    }
}
