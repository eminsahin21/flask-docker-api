from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return jsonify({"message": "Merhaba, burasi home screen!"})

# GET endpoint
@app.route('/hello', methods=['GET'])
def hello():
    return jsonify({"message": "Merhaba, API calisiyor!"})


# POST endpoint
@app.route('/echo', methods=['POST'])
def echo():
    data = request.json
    return jsonify({"you_sent": data})


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
