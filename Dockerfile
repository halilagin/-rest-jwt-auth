# axivity linux test environment. anaconda version, which is also suggested by the https://github.com/activityMonitoring/biobankAccelerometerAnalysis.
FROM radarad-axivity:0.0.3
  
ARG USERNAME=ruser
ARG USERHOME=/home/ruser
ARG USERID=1000
ARG USERGECOS=ruser


User root
#requirements for rest jwt auth
RUN apt-get install -y  curl jq
RUN conda install -y  pycurl



CMD  ["/usr/bin/supervisord"]

