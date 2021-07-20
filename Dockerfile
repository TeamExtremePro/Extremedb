FROM teamextremepro/extremeprouserbot:latest


# Git Clone
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot.git

# PYPI PACKAGE INSTALL
RUN python3 -m pip install -U Extre
COPY ..

RUN sh start.sh
WORKDIR /root/TeamExtremePro/

# run the bot.
CMD ["python3", "Extre"]
