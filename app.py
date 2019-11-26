from flask import Flask, render_template

app=Flask(__name__)

@app.route("/")
def echo():
    return render_template("index.html")

@app.route("/scrape")
def echo():
    return render_template(("scrape.html",)