FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# Generate proto files (if needed)
RUN python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. greeter.proto

EXPOSE 50051

CMD ["python", "server.py"]
