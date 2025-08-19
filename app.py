from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Flask on EasyPanel!"

if __name__ == "__main__":
    # Jalankan di 0.0.0.0 supaya container bisa diakses dari luar
    app.run(host="0.0.0.0", port=8000)
