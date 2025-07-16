FROM python:3.9
EXPOSE 8080
ENV AMQP_USER="roboshop" \
    AMQP_PASS="roboshop123" \
    CART_HOST="cart" \
    CART_PORT="8080" \
    USER_HOST="user" \
    USER_PORT="8080"
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY *.py /app/
COPY payment.ini /app/
#CMD ["python", "payment.py"]
CMD ["uwsgi", "--ini", "payment.ini"]