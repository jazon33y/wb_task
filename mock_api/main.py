from flask import Flask, jsonify, request
import json


app = Flask(__name__)

try:
    with open('data/candidates.json', 'r') as f:
        candidates_data = json.load(f)
except FileNotFoundError:
    print("Error: candidates not found.")
    candidates_data = []

try:
    with open('data/applications.json', 'r') as f:
        applications_data = json.load(f)
except FileNotFoundError:
    print("Error: applications not found.")
    applications_data = []

try:
    with open('data/approvals.json', 'r') as f:
        approvals_data = json.load(f)
except FileNotFoundError:
    print("Error: approvals.json not found.")
    approvals_data = []

# endpoints
@app.route('/', methods=['GET'])
def index():
    """
    Available endpoints.
    """
    return jsonify({
        "message": "This is a mock Greenhouse API",
        "endpoints": {
            "/candidates": "Get all candidate records.",
            "/applications": "Get all application records.",
            "/approvals": "Get all approval records."
        }
    })

@app.route('/candidates', methods=['GET'])
def get_candidates():
    """
    Serves candidates data.
    "Simulates" the /candidates endpoint from the Greenhouse API.
    """
    return jsonify(candidates_data)

@app.route('/applications', methods=['GET'])
def get_applications():
    """
    Serves applications data.
    "Simulates" the /applications endpoint from the Greenhouse API.
    """
    return jsonify(applications_data)

@app.route('/approvals', methods=['GET'])
def get_approvals():
    """
    Serves approvals data.
    "Simulates" the /approvals endpoint from the Greenhouse API.
    """
    return jsonify(approvals_data)

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 3000)))