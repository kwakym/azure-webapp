FROM python:3.7
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
WORKDIR /azure-webapp
COPY . /azure-webapp
EXPOSE 8000
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "8000"]
