FROM pataquets/tor

RUN \
  cat /etc/tor/conf-available/common/* | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/ClientOnly | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/DNSPort | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/client/SocksPort | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/relay/ExitPolicy-RejectAll | tee -a /etc/tor/torrc && \
  cat /etc/tor/conf-available/relay/ExitRelay-Off | tee -a /etc/tor/torrc
