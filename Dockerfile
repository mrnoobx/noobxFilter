# Don't Remove Credit @VJ_Botz 
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ

# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /VJ-FILTER-BOT
WORKDIR /VJ-FILTER-BOT
COPY . /VJ-FILTER-BOT

# Expose the correct port (e.g., 8080)
EXPOSE 8080  

CMD ["python", "bot.py"]
