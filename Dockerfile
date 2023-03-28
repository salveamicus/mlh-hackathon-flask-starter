# escape=` (backtick)

FROM postgres:14.7
RUN apt-get install python3.10.4; `
    pip install -r requirements.txt; `
    sudo apt install postgresql postgresql-contrib; `
    sudo su - postgres; `       
    service postgresql start; `
    exit;



    