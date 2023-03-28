# escape=` (backtick)

FROM postgres:14.7
RUN apt-get install python3.10.4; `
    virtualenv venv `
    source venv/bin/activate `
    pip install -r requirements.txt; `
    sudo su - postgres; `       
    service postgresql start; `
    exit;



    