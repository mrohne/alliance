
%define       name            alliance
%define       ver             5.0
%define       release         20020620
%define       prefix          /usr/local/alliance


Name:         %{name}
Summary:      Alliance VLSI CAD Sytem
Version:      %{ver}
Release:      %{release}
Copyright:    GPL
Group:        Applications/VLSI
Source:       %{name}-%{ver}.tar.gz
URL:          http://www-asim.lip6.fr/alliance/
Packager:     Jean-Paul Chaput <Jean-Paul.Chaput@lip6.fr>
BuildRoot:    /var/tmp/root-%{name}



%description
Alliance  is a complete set of free CAD tools  and  portable  libraries  for
VLSI design. It includes a VHDL  compiler  and  simulator,  logic  synthesis
tools, and automatic place and route  tools.  A  complete  set  of  portable
CMOS libraries is provided, including  a  RAM  generator,  a  ROM  generator
and a data-path compiler. Alliance is  the  result  of  a  ten  year  effort
spent at ASIM department of LIP6 laboratory of the  Pierre  et  Marie  Curie
University (Paris VI, France). Alliance has been used for research  projects
such as the 875 000 transistors StaCS superscalar microprocessor and 400 000
transistors IEEE Gigabit HSL Router.


%package sources
Summary:      Alliance VLSI CAD Sytem - sources
Group:        Applications/VLSI


%description sources
Sources of the Alliance VLSI CAD System, as you might guess...


%prep
%setup -n %{name}-%{ver}


%build
 if [ -d %{buildroot} ]; then rm -r %{buildroot}; fi

# Should be done in the Makefiles...
 mkdir -p %{buildroot}%{prefix}/etc

# As we use libraries for tools that we build in the same run, we have to
# do the "install" step within the "build" step.

 export     CPPFLAGS="-I%{buildroot}%{prefix}/include"
 export         LIBS="-L%{buildroot}%{prefix}/lib"
 export ALLIANCE_TOP=%{prefix}

 mkdir %{_os}
 if [ ! -f configure ]; then
   ./autostuff
 fi
 cd %{_os}
 ../configure --prefix=%{prefix}
 make DESTDIR=%{buildroot} install

 cd ..
 rm -r %{_os}


%install
# Clean the source tree.
#(cd src; ./autostuff clean)

# Copy the sources in the install tree.
 mkdir -p %{buildroot}%{prefix}/src
 tar cf - * | (cd %{buildroot}%{prefix}/src; tar xvf -)

# Set execution rights on the alc_env.* batchs and adjust ALLIANCE_TOP.
# This is not clean and has to be moved in the package itself in the
# future.
 chmod a+rx %{buildroot}%{prefix}/etc/alc_env.*
 sed "s,ALLIANCE_TOP *= *\([^;]*\),ALLIANCE_TOP=%{prefix}," \
    %{buildroot}%{prefix}/etc/alc_env.sh > \
    %{buildroot}%{prefix}/etc/alc_env.sh.1
 mv %{buildroot}%{prefix}/etc/alc_env.sh.1 \
    %{buildroot}%{prefix}/etc/alc_env.sh
 sed "s,setenv *ALLIANCE_TOP *\([^;]*\), setenv ALLIANCE_TOP %{prefix}," \
    %{buildroot}%{prefix}/etc/alc_env.csh > \
    %{buildroot}%{prefix}/etc/alc_env.csh.1
 mv %{buildroot}%{prefix}/etc/alc_env.csh.1 \
    %{buildroot}%{prefix}/etc/alc_env.csh


%post
 ln -sf %{prefix}/etc/alc_env.sh  /etc/profile.d
 ln -sf %{prefix}/etc/alc_env.csh /etc/profile.d


%preun
 if [ $1 -eq 0 ]; then
   rm -f /etc/profile.d/alc_env.sh
   rm -f /etc/profile.d/alc_env.csh
 fi


%clean
 if [ -d %{buildroot} ]; then rm -r %{buildroot}; fi


%files
%attr(755, root, root) %{prefix}/etc/alc_env.*
%{prefix}/etc/*.dreal
%{prefix}/etc/*.graal
%{prefix}/etc/*.rds
%{prefix}/etc/*.elp
%{prefix}/etc/*.cfg
%{prefix}/etc/*.par
%{prefix}/etc/*.scapin
%{prefix}/cells/*
%{prefix}/bin/*
%{prefix}/lib/*
%{prefix}/include/*
%{prefix}/man/man?/*


%files sources
%{prefix}/src


%changelog
* Thu May 16 2002  Jean-Paul.Chaput <Jean-Paul.Chaput@lip6.fr>
- Corrected buggy substitution of ALLIANCE_TOP in alc_env.csh.
- Remove the alc_env.* scripts in "/etc/profile.d" only if this
  is the last package to be removed.

* Mon May  6 2002  Jean-Paul.Chaput <Jean-Paul.Chaput@lip6.fr>
- Initial packaging for release 5.0 (alpha stage).
