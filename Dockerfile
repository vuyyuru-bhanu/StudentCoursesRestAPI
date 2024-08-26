FROM gcr.io/distroless/python3
LABEL author="bhanu" project="sudent cource python"
ARG HOME_DIR='/studentcourses'
ADD . $HOME_DIR
ENV MYSQL_USERNAME=bhanu \
    MYSQL_PASSWORD=root \
    MYSQL_SERVER=localhost \
    MYSQL_SERVER_PORT=3306 \
    MYSQL_DATABASE=test \
    MYSQL_ROOT_PASSWORD=root
EXPOSE 8080
WORKDIR $HOME_DIR
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]