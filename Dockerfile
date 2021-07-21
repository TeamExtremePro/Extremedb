FROM teamextremepro/extremeprouserbot:latest


# Git Clone
RUN git clone https://github.com/TeamExtremePro/ExtremeProUserbot.git
# requirements install
RUN pip install -U -r requirements.txt
# Start 
RUN sh start.sh
WORKDIR /root/TeamExtremePro/
