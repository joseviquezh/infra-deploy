from flask import Flask
from os import getenv 

app = Flask(__name__)

@app.route('/')

def hello_world():
    return 'Hello World'
 
if __name__ == '__main__':
    flask_port = int(getenv("FLASK_PORT", 5000))
    app.run(host="0.0.0.0", port=flask_port)