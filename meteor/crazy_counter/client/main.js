import {
  Template
} from 'meteor/templating';
import {
  ReactiveVar
} from 'meteor/reactive-var';

import './main.html';

Template.hello.onCreated(function helloOnCreated() {
  // counter starts at 0
  this.counter = new ReactiveVar(0);


  var greeting = function() {
    console.log("Hello world");
    // this.counter.set(this.counter.get() + 1);
  }

  Meteor.setInterval(greeting, 500);

});

Template.hello.helpers({
  counter() {
    return Template.instance().counter.get();
  },

});

Template.hello.events({
  'click button' (event, instance) {
    // increment the counter when button is clicked
    test_message()
    instance.counter.set(instance.counter.get() + 1);
  },

});
