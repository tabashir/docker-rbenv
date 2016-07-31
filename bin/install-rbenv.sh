#!/bin/bash

set -eu

su - ruby <<'EOF'
git clone https://github.com/sstephenson/rbenv.git /home/ruby/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/ruby/.bashrc
echo 'eval "$(rbenv init -)"' >> /home/ruby/.bashrc
git clone https://github.com/sstephenson/ruby-build.git /home/ruby/.rbenv/plugins/ruby-build
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

rbenv install 1.8.7-p357
rbenv global 1.8.7-p357

gem install actionmailer --no-rdoc --no-ri --version "2.3.8"
gem install actionpack --no-rdoc --no-ri --version "2.3.8"
gem install activerecord --no-rdoc --no-ri --version "2.3.8"
gem install activerecord-jdbc-adapter --no-rdoc --no-ri --version "1.2.1"
gem install activerecord-jdbcmysql-adapter --no-rdoc --no-ri --version "1.2.1"
gem install activeresource --no-rdoc --no-ri --version "2.3.8"
gem install activesupport --no-rdoc --no-ri --version "2.3.8"
gem install archive-tar-minitar --no-rdoc --no-ri --version "0.5.2"
gem install builder --no-rdoc --no-ri --version "3.1.4"
gem install bundler --no-rdoc --no-ri --version "1.2.3"
gem install cgi_multipart_eof_fix --no-rdoc --no-ri --version "2.5.0"
gem install childprocess --no-rdoc --no-ri --version "0.3.6"
gem install columnize --no-rdoc --no-ri --version "0.3.6"
gem install daemons --no-rdoc --no-ri --version "1.1.6"
gem install erubis --no-rdoc --no-ri --version "2.7.0"
gem install fastthread --no-rdoc --no-ri --version "1.0.7"
gem install ffi --no-rdoc --no-ri --version "1.2.0"
gem install gem_plugin --no-rdoc --no-ri --version "0.2.3"
gem install gruff --no-rdoc --no-ri --version "0.3.6"
gem install jdbc-mysql --no-rdoc --no-ri --version "5.1.13"
gem install json --no-rdoc --no-ri --version "1.7.5"
gem install linecache --no-rdoc --no-ri --version "0.46"
gem install log4r --no-rdoc --no-ri --version "1.1.10"
gem install macaddr --no-rdoc --no-ri --version "1.5.0"
gem install mime-types --no-rdoc --no-ri --version "1.17.2"
gem install mongrel --no-rdoc --no-ri --version "1.1.5"
gem install mongrel_cluster --no-rdoc --no-ri --version "1.0.5"
gem install mysql --no-rdoc --no-ri --version "2.9.0"
gem install net-ssh --no-rdoc --no-ri --version "2.6.2"
gem install rack --no-rdoc --no-ri --version "1.1.3"
gem install rake --no-rdoc --no-ri --version "0.9.2.2"
gem install rbx-require-relative --no-rdoc --no-ri --version "0.0.9"
gem install rcov --no-rdoc --no-ri --version "0.9.11"
gem install redgreen --no-rdoc --no-ri --version "1.2.2"
gem install rmagick --no-rdoc --no-ri --version "2.13.2"
gem install ruby-debug --no-rdoc --no-ri --version "0.10.4"
gem install ruby-debug-base --no-rdoc --no-ri --version "0.10.4"
gem install ruby-debug-ide --no-rdoc --no-ri --version "0.4.16"
gem install systemu --no-rdoc --no-ri --version "2.5.2"
gem install test-unit --no-rdoc --no-ri --version "2.4.5"
gem install uuid --no-rdoc --no-ri --version "2.3.6"
gem install zliby --no-rdoc --no-ri --version "0.0.5"
gem install net-scp --no-rdoc --no-ri --version "1.0.4"
gem install rails --no-rdoc --no-ri --version "2.3.8"

rbenv rehash
EOF
