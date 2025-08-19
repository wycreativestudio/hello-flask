from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello World 🚀</h1><p>Web server Flask pertama kamu sudah jalan!</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
