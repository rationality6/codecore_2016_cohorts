import * as types from '../actions/ActionTypes';

const initialState = {
    number: 0,
    title: 'dumbdumb hello world',
    dumbObject: {
        d: 0,
        u: 1,
        m: 2,
        b: 3
    }
};

export default function counter(state = initialState, action) {
    switch (action.type) {
        case types.INCREMENT:
            return {
                ...state,
                number: state.number + 1,
                dumbObject: {
                    ...state.dumbObject,
                    u: 0
                }
            };
        case types.DECREMENT:
            return {
                ...state,
                number: state.number - 1
            };

        case types.TEXT_CHANGE:
            return {
                ...state,
                title: action.title
            };

        default:
            return state;
    }
}
