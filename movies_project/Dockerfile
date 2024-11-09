FROM python:3.10
ENV PYTHONUNBUFFERED=1
WORKDIR /app
RUN apt-get update
RUN apt-get install gcc default-libmysqlclient-dev -y
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["sh","start_django.sh"]