trafficserver-dev
=================

A docker image to develop Apache Traffic Server.

NOTE
----

- Base image is Ubuntu 14.04 (Trusty Tahr)
- Change package repositories to mirrors in JAPAN.
- Build spdylay and nghttp2 from HEAD to support SDPY and HTTP/2.
- Build openssl from HEAD to support ALPN. This will be removed when openssl-1.0.2 is released.
