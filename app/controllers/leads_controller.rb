
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

    def csv 
        @csv_leads = to_csv
        
        respond_to do |format|
            format.html
            format.csv { send_data @csv_leads }
        end
    end

    private

    def lead_params
        params.require(:lead).permit!
    end

    def to_csv 
      Lead.all.map {|ld| ld.to_csv}.join("\n")
    end

end
