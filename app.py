from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    # Hanya dipakai kalau jalan lokal (bukan di container production)
    app.run(host="0.0.0.0", port=8080)
