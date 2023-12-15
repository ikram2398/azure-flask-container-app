FROM python
COPY ./requirements.txt /webapp/requirements.txt
WORKDIR webapp
RUN pip install -r requirements.txt
COPY webapp/* /webapp
EXPOSE 8080
CMD ["python", "app.py"]

