FROM smackers/smack
MAINTAINER Michael Emmi

ADD bin/install-ct-verif.sh /tmp/install-ct-verif.sh
RUN chmod u+x /tmp/install-ct-verif.sh
RUN /tmp/install-ct-verif.sh
