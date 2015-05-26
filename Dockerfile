FROM jenkins:latest
MAINTAINER Hiroshi Ota <otahi.pub@gmail.com>

USER root
RUN apt-get update
RUN apt-get install -y ruby-build
RUN groupadd ruby
RUN gpasswd -a jenkins ruby

WORKDIR /usr/local
RUN git clone https://github.com/sstephenson/rbenv.git

RUN chgrp -R ruby rbenv
RUN chmod -R g+rwxXs rbenv

RUN mkdir rbenv/plugins
WORKDIR /usr/local/rbenv/plugins
RUN git clone https://github.com/sstephenson/ruby-build.git
RUN chgrp -R ruby ruby-build
RUN chmod -R g+rwxs ruby-build

RUN echo 'export RBENV_ROOT=/usr/local/rbenv'   >> /etc/bash_profile
RUN echo 'export PATH="$RBENV_ROOT/bin:$PATH"'  >> /etc/bash_profile
RUN echo 'eval "$(rbenv init -)"'               >> /etc/bash_profile

USER jenkins

COPY plugins.txt /plugins.txt
RUN  plugins.sh /plugins.txt

WORKDIR $JENKINS_HOME
ENTRYPOINT ["/usr/local/bin/jenkins.sh"]
