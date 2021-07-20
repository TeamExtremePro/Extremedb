FROM teamextremepro/extremeprouserbot:latest


# Git Clone
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot.git

# PYPI PACKAGE INSTALL
RUN python3 -m pip install -U Extre
COPY ..
# requirements install
RUN pip3 install -U -r https://raw.githubusercontent.com/Noob-Stranger/speical-req/main/requirements.txt

# Start 
RUN sh start.sh
WORKDIR /root/TeamExtremePro/

# run the bot.
CMD ["python3", "Extre"]
