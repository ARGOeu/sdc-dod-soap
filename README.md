# sdc-dod-soap
Plugin for DOD - SOAP-webservices that offer CSRs . This is a probe that checks functionality of SOAP-webservices that offer CSRs (in fomats ISO19115 and ISO19139) for MARIS



## how to use it 

Usage: $me [options]
Script to check DOD SOAPservice is working.
It takes as argument a URL and checks if the HTTP response
is a vaild XML-document.

Options:
  -u, --url <URL>			URL of the service
  -h, --help                Print this help text.