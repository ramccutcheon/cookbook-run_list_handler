name             'run_list_handler'
maintainer       'ATT'
maintainer_email 'jhtran@att.com'
license          'All rights reserved'
description      'Installs/Configures run_list_handler'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.3'

depends 'chef_handler'

%w( centos debian ubuntu ).each do |os|
  supports os
end
