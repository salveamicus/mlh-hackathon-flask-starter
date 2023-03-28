FROM postgres
run apt-get install python3.10.4; \
    pip install -r requirements.txt;
    