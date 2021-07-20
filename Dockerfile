FROM teamextremepro/extremeprouserbot:latest


# Git Clone
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot.git

# PYPI PACKAGE INSTALL
RUN python3 -m pip install -U Extre
COPY ..
# requirements install
RUN pip install -U -r https://raw.githubusercontent.com/Noob-Stranger/speical-req/main/requirements.txt
RUN pip install -U -r https://raw.githubusercontent.com/Noob-Stranger/speical-req/main/top.txt

# Start 
RUN sh startup.sh
WORKDIR /root/TeamExtremePro/
