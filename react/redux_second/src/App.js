import React,{Component} from 'react';
import Users from './containers/Users';
import Increment from './containers/Increment'

class App extends Component {
    render(){
        return(
            <div>
                <Increment></Increment>
                <Users></Users>
            </div>
        )
    }
}

export default App;
