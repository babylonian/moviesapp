
def send_mail
  Emailer::deliver_contact_email(params[:email])
end