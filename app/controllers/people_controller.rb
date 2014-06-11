class PeopleController < ApplicationController

  def index
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
  end

  def create
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

  private

  def person_params
    params.require(:person).permit(:name, :jobtitle)
end
