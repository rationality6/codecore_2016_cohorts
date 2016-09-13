import React from 'react';
import Contact from './Contact.js'

class Counter extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      value: 0
    };
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    this.setState({
      value: this.state.value + 1
    })
    // console.log('Works');
    // this.state.value = this.state.value + 1;
    // this.forceUpdate();
  }

  setLoop() {
    this.setInterval0 = setInterval(() => {
      // if (this.state.value >= 100) {
        // clearInterval(this.setInterval0);
      // }
      this.setState({
        value: this.state.value + 1
      })
    }, 1)
  }

  cleanLoop() {
    console.log('cleanLoop works');
    clearInterval(this.setInterval0);
  }

  render() {
    return (
      <div>
        <div>
          {this.state.value}
        </div>
        <button onClick={this.handleClick}>Press me</button>
        <button onClick={this.setLoop.bind(this)}>Press me</button>
        <button onClick={this.cleanLoop.bind(this)}>Press me</button>
      </div>
    )
  }
}

class App extends React.Component {
  render() {
    return (
      <div>
        <h1><Counter/></h1>
        <h1><Contact/></h1>
      </div>
    );
  }
}

export default App;
