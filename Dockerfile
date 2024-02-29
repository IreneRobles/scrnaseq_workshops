FROM python:3.11-slim-bookworm AS build

RUN apt-get update && apt-get install -y --no-install-recommends gcc build-essential
RUN pip install --upgrade pip setuptools wheel

ADD ./requirements.txt requirements.txt

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --no-cache-dir -r requirements.txt
