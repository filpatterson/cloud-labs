# get python image (3.8 chosen because of greater compatibility of this version)
FROM python:3.8-alpine

# use requirements freezed by pip
COPY requirements.txt /app/requirements.txt

# form a working dir
WORKDIR /app

# install all dependencies conform requirements file
RUN pip install -r requirements.txt

# copy local package content into the application folder
COPY . /app

# set an entrypoint to launch application
ENTRYPOINT [ "python" ]

CMD ["py_runnable_experiment.py" ]