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

<<<<<<< HEAD

=======
  private

  def person_params
    params.require(:person).permit(:name, :jobtitle)
>>>>>>> c0b7eed150f7e9d7d0d2dabd1303e95131ddb837
end
