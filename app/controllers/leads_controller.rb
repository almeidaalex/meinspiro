class LeadsController < ApplicationController
    def create
        params[:lead][:userIP] = request.remote_ip;
        newLead = params.require(:lead).permit!
        Lead.create newLead
    end
end
