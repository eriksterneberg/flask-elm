from flask import Flask, jsonify
app = Flask(__name__)


@app.route("/api/user/login", methods=["GET", "POST"])
def login(*args, **kwargs):
    print 'Got request for login'
    print args
    print kwargs
    # print request
    response = {'username': 'Erik'}
    return jsonify(response)


if __name__ == "__main__":
    app.run(port=8000)