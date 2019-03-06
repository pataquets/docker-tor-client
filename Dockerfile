FROM pataquets/tor

RUN \
  cat \
    /etc/tor/conf-available/common/* \
    /etc/tor/conf-available/client/ClientOnly \
    /etc/tor/conf-available/client/DNSPort \
    /etc/tor/conf-available/client/SocksPort \
    /etc/tor/conf-available/relay/ExitPolicy-RejectAll \
    /etc/tor/conf-available/relay/ExitRelay-Off \
    | tee -a /etc/tor/torrc | nl
