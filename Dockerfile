FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get remove python3-blinker -y
RUN apt-get install build-essential libssl-dev libffi-dev python3-dev -y
RUN pip3 install --no-cache-dir --break-system-packages aiofiles aiohttp aioshutil anytree apscheduler aria2p asyncio cloudscraper dnspython feedparser flask gevent google-api-python-client google-auth-httplib2 google-auth-oauthlib gunicorn httpx lxml motor natsort pillow psutil pycryptodome pymongo pyrofork==2.2.11 python-dotenv python-magic qbittorrent-api requests telegraph tenacity TgCrypto urllib3 uvloop xattr yt-dlp

COPY . .
CMD ["bash", "start.sh"]
