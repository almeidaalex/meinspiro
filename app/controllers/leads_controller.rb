class LeadsController < ApplicationController
    def create
       
        @nlead = Lead.new(lead_params)
        @nlead.userIP = request.remote_ip

        if @nlead.save
            begin
             WelcomeMailer.send_material(@nlead).deliver_now
             #send_simple_message_2
             render "thanks"
            rescue => exception
             puts exception
            end
        end
    end

    def thanks
        render :leads_thanks
    end

    private

    def lead_params
        params.require(:lead).permit!
    end

end
