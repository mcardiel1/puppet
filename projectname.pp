
node "svm3.llnl.gov" {

file { '/root/example_file.txt':
    ensure => "file",
    owner  => "root",
    group  => "root",
    mode   => "700",
    content => "Congratulations!
Puppet has created this file.
",}

 # End node mynode.example.com


file {'/etc/hosts': 
    source => "/etc/puppet/manifests/hosts",
    mode   => "644",
    owner  => "root",
    group  => "root"
  }


file {'/etc/resolv.conf':
    source => "/etc/puppet/manifests/resolv.conf",
    mode   => "644",
    owner  => "root",
    group  => "root"
  }
package{'git':
    ensure => latest,
  }

}
