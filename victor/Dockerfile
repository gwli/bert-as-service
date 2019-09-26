FROM nvcr.io/nvidia/tensorflow:19.08-py3
RUN pip install bert-serving-server
COPY ./ /app
COPY ./entrypoint.sh /app
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []

