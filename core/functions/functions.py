import datetime
import suraj_furniture.settings
from django.core.mail import send_mail

def handle_uploaded_file(f): 
    file_name = f"{datetime.datetime.today().date()}_{f.name}"
    with open('playground/static/upload/'+file_name, 'wb+') as destination:  
        for chunk in f.chunks():  
            destination.write(chunk)
    return file_name        

def send_smtp_email(email_arr, subject, msg):    
    check_email_send = send_mail(subject = subject, #'This is your subject',
                            message = msg,#"Hi,<br> That's your message body",
                            from_email = suraj_furniture.settings.EMAIL_HOST_USER,
                            recipient_list = email_arr, #['sheetalvishwakarma69106@gmail.com','meerav01011971@gmail.com','chaitanyavantaku@gmail.com'],
                            auth_user = suraj_furniture.settings.EMAIL_HOST_USER,
                            auth_password = suraj_furniture.settings.EMAIL_HOST_PASSWORD,
                            fail_silently = False
                        )  
    print(f"'Email send : {check_email_send}'")
    return check_email_send #HttpResponse(check_email_send)
    