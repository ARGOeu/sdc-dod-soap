Name:		sdc-dod-soap
Version:	1.0.1
Release:	2%{?dist}
Summary:	Nagios sdc dod soap service 
License:	GPLv3+
Packager:	Themis Zamani <themiszamani@gmail.com>

Source:		%{name}-%{version}.tar.gz
BuildArch:	noarch
BuildRoot:	%{_tmppath}/%{name}-%{version}
Requires(pre):  xmlstarlet
AutoReqProv: no

%description
A probe to check functionality of SOAP-webservices that offer CSRs (in fomats ISO19115 and ISO19139) for MARIS

%prep
%setup -q

%define _unpackaged_files_terminate_build 0 

%install

install -d %{buildroot}/%{_libexecdir}/argo-monitoring/probes/seadatacloud-dod-soap
install -d %{buildroot}/%{_sysconfdir}/nagios/plugins/seadatacloud-dod-soap
install -m 755 seadatacloud-nvs2.sh %{buildroot}/%{_libexecdir}/argo-monitoring/probes/seadatacloud-dod-soap/sdc-dod-soap.sh

%files
%dir /%{_libexecdir}/argo-monitoring
%dir /%{_libexecdir}/argo-monitoring/probes/
%dir /%{_libexecdir}/argo-monitoring/probes/seadatacloud-dod-soap

%attr(0755,root,root) /%{_libexecdir}/argo-monitoring/probes/seadatacloud-dod-soap/sdc-dod-soap.sh

%changelog
* Thu Oct 13 2020 Themis Zamani <themiszamani@gmail.com>  - 1.0.0-1%{?dist}
- Initial version of the package. Work done by Micahlis Iordanis - iordanism@hcmr.gr 
