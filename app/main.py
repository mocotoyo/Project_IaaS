from flask import Flask, jsonify
import os

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "status": "ok",
        "message": "Hola desde la App Web en Docker!",
        "version": os.environ.get('APP_VERSION', '1.0.0')
    })

if __name__ == '__main__':
    # Usado solo para pruebas locales
    app.run(host='0.0.0.0', port=5000)
