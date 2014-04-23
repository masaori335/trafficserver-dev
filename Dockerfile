FROM ubuntu

RUN echo "deb http://jp.archive.ubuntu.com/ubuntu/ saucy main restricted\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy main restricted\n\
deb http://jp.archive.ubuntu.com/ubuntu/ saucy-updates main restricted\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy-updates main restricted\n\
deb http://jp.archive.ubuntu.com/ubuntu/ saucy universe\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy universe\n\
deb http://jp.archive.ubuntu.com/ubuntu/ saucy-updates universe\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy-updates universe\n\
deb http://jp.archive.ubuntu.com/ubuntu/ saucy multiverse\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy multiverse\n\
deb http://jp.archive.ubuntu.com/ubuntu/ saucy-updates multiverse\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy-updates multiverse\n\
deb http://jp.archive.ubuntu.com/ubuntu/ saucy-backports main restricted universe multiverse\n\
deb-src http://jp.archive.ubuntu.com/ubuntu/ saucy-backports main restricted universe multiverse\n\
deb http://security.ubuntu.com/ubuntu saucy-security main restricted\n\
deb-src http://security.ubuntu.com/ubuntu saucy-security main restricted\n\
deb http://security.ubuntu.com/ubuntu saucy-security universe\n\
deb-src http://security.ubuntu.com/ubuntu saucy-security universe\n\
deb http://security.ubuntu.com/ubuntu saucy-security multiverse\n\
deb-src http://security.ubuntu.com/ubuntu saucy-security multiverse\n"> /etc/apt/sources.list

RUN apt-get update

# NOTE: packages which required by trafficserver

RUN apt-get install -y		\
    	    build-essential	\
	    git			\
	    autoconf		\
	    automake		\
	    pkg-config		\
	    libtool		\
	    make		\
	    openssl		\
	    tcl			\
	    expat		\
	    libpcre3-dev	\
	    libcap-dev		\
	    flex		\
	    hwloc		\
	    curl

# RUN apt-get install -y libcurses5-dev

# TODO : download source and build libspdylay
# TODO : download source and build libnghttp2

# NOTE: packages which required by nghttp2 app

RUN apt-get install -y \
	    zlib1g-dev \
	    libcunit1-dev \
	    libevent-dev \
	    libssl-dev \
	    libxml2-dev \
	    libjansson-dev \
	    libjemalloc-dev

# TODO : build nghttp and h2load

# TODO : download source and build trafficserver
