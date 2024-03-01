FROM jupyter/scipy-notebook 

RUN apt-get update && apt-get install -y --no-install-recommends gcc build-essential
RUN pip install --upgrade pip setuptools wheel

ADD ./requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
