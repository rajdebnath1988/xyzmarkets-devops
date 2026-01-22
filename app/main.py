from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/price")
def price():
    return {"symbol": "EURUSD", "price": 1.1023}
