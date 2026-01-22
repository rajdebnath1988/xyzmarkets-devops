from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"status": "xyzMarkets Trading API Running"}

@app.get("/health")
def health():
    return {"health": "ok"}
