# gRPC Hello World (Python)

This is a minimal example of a gRPC application written in Python. It demonstrates how to define a service with Protocol Buffers (`.proto`), generate Python code, and implement a simple client-server application.

---

## 📁 Project Structure

grpc-hello-world/
├── greeter.proto # Protocol buffer definition
├── greeter_pb2.py # Generated by protoc
├── greeter_pb2_grpc.py # Generated by protoc
├── server.py # gRPC server implementation
├── client.py # gRPC client implementation
├── requirements.txt
└── README.md


---

## 🔧 Setup

### 1. Install dependencies

```bash
pip install grpcio grpcio-tools
python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. greeter.proto

python server.py
python client.py
