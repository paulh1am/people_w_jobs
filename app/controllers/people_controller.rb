class PeopleController < ApplicationController

  def index
    @people = People.all
  end

  def show
  end
  
  def new
    #show a form
  end

  def create
    new_person = Person.create ( person_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
def person_params
  params.require(:person).permit(:name, :jobtitle)
end
end
