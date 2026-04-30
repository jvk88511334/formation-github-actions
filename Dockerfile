FROM python:3.11-slim

COPY sysinfo /app/sysinfo
RUN chmod +x /app/sysinfo

RUN mkdir -p /app/script/mysystem
COPY script/mysystem/mysystem.py /app/script/mysystem/mysystem.py

WORKDIR /app

CMD ["bash"]