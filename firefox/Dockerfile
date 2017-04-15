FROM ubuntu:14.04
LABEL maintainer "Yaniv Levi <yanivl@team.co.il>"

RUN sed -i.bak "/^# deb .*partner/ s/^# //" /etc/apt/sources.list && apt-get update && apt-get install -y --force-yes firefox && apt-get install -y --force-yes  adobe-flashplugin

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD /usr/bin/firefox
