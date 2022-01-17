## AoB: from current praqma/network-multitool:extra
#FROM praqma/network-multitool:extra
FROM praqma/network-multitool:73580d2
COPY dist/mcast /root/
COPY libs/* /root/
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]
