module Api
class ClientsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_client, only: [:edit, :update, :destroy, :show]

    def index
        @clientes = Client.all
    end

    def new 
        @cliente = Client.new
    end

    def create 
        @cliente = Client.new(client_params)
            if @cliente.save
                render 'api/clients/show', status: :created
              else
                render json: @cliente.errors.full_messages, status: :unprocessable_entity
              end
    end

    def edit
    end

    def update
            if @cliente.update(client_params)
                render 'api/clients/show', status: :created
                format.js
            else
                render json: @cliente.errors.full_messages, status: :unprocessable_entity
            end
    end

    def destroy
        @cliente.destroy
        render 'api/clients/show', status: :created
    end

    private 
    def set_client
        @cliente = Client.find(params[:id])
    end

    def client_params
        params.require(:client).permit(:name, :direction, :email, :statusClient, :rolUser)
    end
end
end