import * as types from './ActionTypes';

export function increment() {
    return {type: types.INCREMENT};
}

export function decrement() {
    return {type: types.DECREMENT};
}

export function setColor(color) {
    return {type: types.SET_COLOR, color};
}

export function textChange(title){
    return {type: types.TEXT_CHANGE, title};
}

export function handleChange(text){
    return {type: types.TEXT_TYPE, text}
}
