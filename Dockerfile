FROM python:3.5-slim 
LABEL maintainer="finalaws1989@gmail.com"
USER root
WORKDIR /app 
ADD . /app 
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
ENV NAME World 
CMD ["python", "app.py"]
