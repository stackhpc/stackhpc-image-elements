===============
ipa-delay-start
===============
The ironic python agent can start before it's able to connect to a NTP server.
This leaves the clock out of sync, which can cause problems for TLS
certificates. This element adds a short delay before the ironic python agent
starts, to give network connectivity time to properly establish.

* ``DIB_IPA_DELAY_START_SECS`` This is the time to wait after
  network-online.target before starting ironic-python-agent.service.
  The default value is ``10``.
