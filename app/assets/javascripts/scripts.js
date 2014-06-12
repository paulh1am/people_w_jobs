function Person(personJSON){
  this.name     = personJSON.name;
  this.jobtitle = personJSON.jobtitle
  this.id       =personJSON.id
}

function PersonView(model){
  this.model  = model;
  this.el     = undefined;
}

PersonView.prototype.render = function(){
  return this;
}

function PeopleCollection(){
  this.models = [];
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('addFlare');
  return this;
}

People Collection.prototype.create = function(paramObject){
  var that = this
  $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data {person: paramObject},
    success: function(data){
      that.add(data);
    }
  })
}
