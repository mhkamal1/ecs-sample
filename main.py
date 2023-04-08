from fastapi import Depends, FastAPI
import os

app = FastAPI()

@app.get("/")
def hello_world():
    return "Hello, World!"
    
