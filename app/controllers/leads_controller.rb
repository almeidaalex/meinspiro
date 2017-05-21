class LeadsController < ApplicationController
    def create
        newLead = params.require(:lead).permit!
        Lead.create newLead
    end
    
end
