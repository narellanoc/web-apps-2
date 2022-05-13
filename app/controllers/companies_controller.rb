class CompaniesController < ApplicationController

  # TODO:
  # def index
  # end
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by({ "id" => params["id"] })
    @contacts = Contact.where({"company_id" => @company["id"] })
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company["name"] = params["company"]["name"]
    @company["state"] = params["company"]["state"]
    @company["city"] = params["company"]["city"]
    @company.save
    redirect_to "/companies"
  end

end
