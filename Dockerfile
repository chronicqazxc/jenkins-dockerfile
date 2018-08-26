FROM jenkins/jenkins:lts
RUN /usr/local/bin/install-plugins.sh \
github \
ghprb \
github-oauth \
generic-webhook-trigger \
simple-theme-plugin \
ansicolor
ENV JAVA_OPTS -Xms256m -Xmx512m
ENTRYPOINT []
CMD /sbin/tini -s -- /usr/local/bin/jenkins.sh --httpPort=$PORT
