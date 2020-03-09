FROM alpine
ADD runflow /runflow
ENTRYPOINT [ "/runflow" ]
