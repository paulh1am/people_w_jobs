class PeopleController < ApplicationController

  def index
    @people = People.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    #show a form
  end

  def create
    new_person = Person.create ( person_params)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    edited_person = Person.find(params[:id])
    edited_person.update(person_params)
  end

  def destroy
    Person.delete(params[:id])
    redirect_ to people_path

  def person_params
    params.require(:person).permit(:name, :jobtitle)
  end

end
