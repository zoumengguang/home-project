FROM python:3.9.6

ENV FLASK_APP="hello"

COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000

CMD ["python", "hello.py"]