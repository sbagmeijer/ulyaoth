useradd ulyaoth
cd /home/ulyaoth
su ulyaoth -c "rpmdev-setuptree"
cd /home/ulyaoth/rpmbuild/SOURCES/
su ulyaoth -c "wget http://apache.mirrors.spacedump.net/tomcat/tomcat-6/v6.0.41/bin/apache-tomcat-6.0.41.tar.gz"
cd /home/ulyaoth/rpmbuild/SPECS/
su ulyaoth -c "wget https://raw.githubusercontent.com/sbagmeijer/ulyaoth/master/Repository/ulyaoth-tomcat-admin/SPECS/ulyaoth-tomcat6-admin.spec"
yum-builddep -y ulyaoth-tomcat6.spec
su ulyaoth -c "rpmbuild -bb ulyaoth-tomcat6.spec"
cp /home/ulyaoth/rpmbuild/RPMS/x86_64/* /root/
su ulyaoth -c "rm -rf /home/ulyaoth/rpmbuild"
rm -rf /root/build-ulyaoth-tomcat6.sh