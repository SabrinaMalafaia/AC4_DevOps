FROM python:3.7-slim
RUN pip install flask
RUN pip install flask-mysql
RUN mkdir templates
RUN mkdir static
COPY ac4.py /app.py
COPY templates/*  /templates/
RUN chmod -R a+rwx static
RUN chmod -R a+rwx templates
CMD ["python","ac4.py"]