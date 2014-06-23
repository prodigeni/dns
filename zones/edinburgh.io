#
#  The general form of the input is ":" deliminated records:
#
#   TYPE : NAME : VALUE : TTL
#
#  Where type is:
#
#   @ for MX.
#   + for A.
#   6 for AAAA.
#   C for CNAME.
#   T for TXT.


#
#  MX record - note we have priority not TTL here.
#
@edinburgh.io:mail.steve.org.uk:15

#
#  IPv4 records.
#
+edinburgh.io:80.68.84.103:300
+www.edinburgh.io:80.68.84.103:300

#
#  IPv6 records - note lack of ":" in the address.
#
6edinburgh.io:200141c8010b01030000000000000010:300
6www.edinburgh.io:200141c8010b01030000000000000010:300


#
#  A TXT record - NOTE That the value must be quoted.
#
Tedinburgh.io:"v=spf1 mx a ptr ip4:1.2.3.4 ?all":300


#
# This is a CNAME
#
Cexample.edinburgh.io:example.com:300
