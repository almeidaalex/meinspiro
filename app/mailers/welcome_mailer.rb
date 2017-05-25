require 'digest/sha2'  
class WelcomeMailer < ApplicationMailer
    default from: 'Marina Bittencourt | MEInspiro <noreply@meinspiro.com.br>'
    default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@meinspiro.com.br"
    layout 'mailer'

    def send_material(lead)
       @lead = lead
   
       mail(to: @lead.email, subject: "Nosso material acabou de chegar na sua caixa!");
    end
end
