# sdc-dod-soap
SOAP-webservices that offer CSRs (in fomats ISO19115 and ISO19139) for MARIS.

Plugin for DOD - SOAP-webservices that offer CSRs . This is a probe that checks functionality of SOAP-webservices that offer CSRs (in fomats ISO19115 and ISO19139) for MARIS

The SOAP-webservices are used in the MIKADO-software to offer access for users to the CSR-list if they want to generate CDI-entries. MARIS itself uses the SOAP webservices to control the format of the incoming CDIs.



## how to use it 

 $me [options]

Script to check DOD SOAPservice is working.

It takes as argument a URL and checks if the HTTP response
is a vaild XML-document.

### Usage:

```
$me --url https://example.com/ --help
```

###  Options:
```
  -u, --url <URL>		URL of the service
  -h, --help            Print this help text.
```
  