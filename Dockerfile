FROM       python
RUN        pip install pipenv
COPY       . /app
WORKDIR    /app
RUN        pipenv install --deploy --dev
ENV        PS C:\>
ENTRYPOINT ["pipenv", "run"]
CMD        ["python"]