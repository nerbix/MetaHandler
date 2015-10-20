require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'gmail.com',
            :user_name            => 'FROM ADDRESS',
            :password             => 'PASSWORD',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'TO ADDRESS'
     from 'FROM ADDRESS'
  subject 'New Meterpreter Session Opened'
     body 'congrats, you got a new session!'
end

