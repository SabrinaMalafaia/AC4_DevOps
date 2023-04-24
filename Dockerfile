FROM python:3.7-slim
RUN pip install flask
COPY ac4.py /app.py
CMD ["python","ac4.py"]