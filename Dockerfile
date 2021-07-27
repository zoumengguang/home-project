FROM python:3.9.6

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV FLASK_APP="hello"

COPY . .
RUN pip install -r requirements.txt
CMD ["flask", "run"]