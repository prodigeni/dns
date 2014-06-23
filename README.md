
About
=====

This repository is an example used to demonstrate the [DNS-API](http://dns-api.com/) service, allowing your Github repositories to be used to control DNS.


Details
-------

This repository has been configured with a webhook, which means every time a change is pushed to it the GitHub system will call out to the [DNS-API](http://dns-api.com/) servers.

The hook will initiate a scan of each file beneath the `zones/` directory - and each zone there will be added to DNS.  The files __must__ be named after the zone they represent, to allow identification to work successfully.


Zone Format
-----------

The zone-format is a simplified version of the [TinyDNS  format](http://cr.yp.to/djbdns/tinydns-data.html), allowing you to define records in a simple line-based fashion:


* Lines prefixed with "`#`" are comments.
* Lines prefixed with "`+`" are A records.
* Lines prefixed with "`6`" are IPv6 records.
* Lines prefixed with "`@`" are MX records.
* Lines prefixed with "`C`" are CNAME records.

The general form of each line is "type : name : value : TTL", and the [edinburgh.io zone](zones/edinburgh.io) file should be a good example.

Feel free to [get in touch](http://dns-api.com/docs/help) if you have queries, comments, or problems.



Future Changes
--------------

In the future we'll add support for `TXT`, and `SRV` records.
