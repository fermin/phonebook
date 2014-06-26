module Phonebook
  class API < Grape::API
    prefix 'api'
    version 'v1'
    format :json

    helpers do
      params :pagination do
        optional :page, type: Integer
        optional :per_page, type: Integer
      end
    end

    resource :departments do
      desc "get all visitor information"
      params do
        use :pagination
      end
      get do
        Department.paginate(page: params[:page], per_page: params[:per_page]||20)
      end

      desc "Return a department."
      params do
        requires :id, type: Integer, desc: "department id."
      end
      route_param :id do
        get do
          Department.find(params[:id])
        end
      end

    end

    resource :employees do

      desc "Get employees information by page and limit"
      get do
        @employees = Employee.paginate(page: params[:page], per_page: params[:per_page]||20)
      end

      desc "Return a employee."
      params do
        requires :id, type: Integer, desc: "employee id."
      end
      route_param :id do
        get do
          Employee.find(params[:id])
        end
      end

    end
  end
end
