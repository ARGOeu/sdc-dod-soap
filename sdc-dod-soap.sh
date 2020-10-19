#!/bin/bash

# function for help message
usage () {
cat <<EOF
Usage: $me [options]
Script to check EDMO_CMS Login service is working.
It takes as argument a URL and checks if the HTTP response
is a vaild XML-document.

Options:
  -u, --url <URL>			URL of Welcome Login Page
  -h, --help                            Print this help text.
EOF
}


# function for parsing arguments
POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -u|--url)
    URL="$2"
    shift # past argument
    shift # past value
    ;;
    -t|--connect-timeout)
    TIMEOUT="$2"
    if [ -z "$TIMEOUT" ] || [[ "$TIMEOUT" =~ ^-.* ]]
    then
        TIMEOUT=10      # if TIMEOUT is not set, but '-t' option is used, fall to default 10 seconds
        shift
    else
    shift # past argument
    shift # past value
    fi
    ;;
     -h|--help)
     usage; exit 3 ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters


# Check if required options are passed(empty or dash(-))
if [ -z "$URL" ] || [[ "$URL" =~ ^-.* ]]
  then
        echo "UNKNOWN - No URL is defined | UNKNOWN - No URL is defined"
        exit 3
fi


#xmlstarlet val -w http://seadata.bsh.de/axis2/services/CSR2?wsdl
xmlstarlet val -w -s $URL
XML_STATUS=$(echo $?)
if [ $XML_STATUS -eq 0 ];then
	echo -e "\n OK - $URL is a valid XML-Document | xml_document_validity=0"
	exit 0
else
	echo -e "\n UNKNOWN - $URL is not a valid XML-Document | xml_document_validity=3"
	exit 3	
fi


