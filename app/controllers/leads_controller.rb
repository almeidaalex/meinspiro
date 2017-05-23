class LeadsController < ApplicationController
    def create
       
        @nlead = Lead.new(lead_params)
        @nlead.userIP = request.remote_ip

        if @nlead.save
            begin
             WelcomeMailer.send_material(@nlead).deliver_now
             #send_simple_message_2
             render "_thanks"   
            rescue => exception
             puts exception
            end
        end
    end

    private

    def lead_params
        params.require(:lead).permit!
    end

    def send_simple_message_2
        begin
            RestClient.post "https://api:key-9678e8a734b0da82a690bfb27730f975"\
            "@api.mailgun.net/v3/mg.meinspiro.com.br/messages",
            :from => "Contato Meinspiro <nao_responda@mg.meinspiro.com.br>",
            :to => "adeno.si@gmail.com",
            :subject => "Isso é um teste",
            :text => "Quero saber se chegou o email"
        rescue RestClient::ExceptionWithResponse => e
            puts e.response
        end
    end

end
