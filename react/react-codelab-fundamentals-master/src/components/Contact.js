import React from 'react';
import ContactInfo from './ContactInfo.js'

export default class Contact extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      keyword: '',
      contactData: [
        {name:'Abert0',phone:'234234324'},
        {name:'Abert1',phone:'234234324'},
        {name:'Abert2',phone:'234234324'},
        {name:'Abert3',phone:'234234324'},
      ],
      userData:[
        {name:'foo0',id:'bar0',phone:'334'},
        {name:'foo1',id:'bar1',phone:'334'},
        {name:'foo2',id:'bar2',phone:'334'},
      ]
    };
    console.log('Constructor works');

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e){
    this.setState({
      keyword: e.target.value
    })
  }

  render() {
    const mapToComponent = (data) =>{
      data.sort();
      data = data.filter(
        (contact) => {
          return contact.name.toLowerCase()
            .indexOf(this.state.keyword.toLowerCase()) > -1;
        }
      )
      return data.map((contact,i) =>{
        return(
          <ContactInfo contact={contact} key={i} />
        );
      })
    };

    return (
      <div>
        <input
          name='keyword'
          placeholder='Search'
          value={this.state.keyword}
          onChange={this.handleChange}
        />
        {mapToComponent(this.state.contactData)}
        {mapToComponent(this.state.userData)}
      </div>
    )
  }
}
