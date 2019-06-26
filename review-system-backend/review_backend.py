from flask import Flask, request, jsonify
from textblob import TextBlob
from random import randint
import ast

app = Flask(__name__)


def make_answer(polarity):
    if polarity > 0.0:
        answer = {
            '1': ("Thank you for your feedback! Have a nice day!", "😊"),
            '2': ("We are glad that you liked everything! Thank you!", "🤩"),
            '3': ("Thank you so much for your review! We will be waiting to see you again!", "😍")
        }[str(randint(1,3))]
        print(answer)
        return answer
    else:
        answer = {
            '1': ("****", "🤬"),
            '2': ("Sorry to hear that! We will notify administator and take action. Thank you for your feedback!", "😔"),
            '3': ("We are constantly improving and your feedback will help us to become better. Thank you so much!", "😟")
        }[str(randint(2,3))]
        print(answer)
        return answer



def analyze_review(review):
    print(review)
    testimonial = TextBlob(review['speech'])
    print(testimonial)
    answer = make_answer(testimonial.polarity)
    print(answer)
    return answer


@app.route("/reviewSystem/processReview", methods=['POST'])
def process_review():
    assert request.method == 'POST'
    print(request.headers['Content-Type'])
    if request.headers['Content-Type'] == 'application/json; charset=utf-8':
        print(request.json)
        return jsonify(analyze_review(request.json))
