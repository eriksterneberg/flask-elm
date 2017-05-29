from flask import Flask
app = Flask(__name__)


@app.route("/")
def serve_spa():
    with open('./index.html') as infile:
        return infile.read()


if __name__ == "__main__":
    app.run()