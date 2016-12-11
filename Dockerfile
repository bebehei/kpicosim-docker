FROM debian:squeeze

ADD files /

RUN apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y \
         kpicosim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


ENV USER_UID=1000
ENV USER_GID=1000
ENV USER_NAME=kpicosim

# Replace 1000 with your user / group id
RUN groupadd -g $USER_GID $USER_NAME \
    && useradd -m -u $USER_UID -g $USER_GID $USER_NAME


USER $USER_NAME
ENV HOME /home/$USER_NAME
CMD /usr/bin/kpicosim

    #&& echo "$USER_NAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user \
    #&& chmod 0440 /etc/sudoers.d/user
