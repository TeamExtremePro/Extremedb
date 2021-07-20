FROM debian:latest

RUN apt-get update && apt-get upgrade -y

# Git Clone
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot.git

# PYPI PACKAGE INSTALL
RUN python3 -m pip install -U Extre

# install requirements.
RUN python3 -m pip install -U -r requirements.txt

# run the bot.
CMD ["python3", "Extre"]
