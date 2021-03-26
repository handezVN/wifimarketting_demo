cd /tmp
clear
echo 'Welcome to Free WiFi Marketing'
echo 'Getting source...'
echo '#################################################'
wget http://downloads.openwrt.org/barrier_breaker/14.07/ar71xx/generic/packages/routing/nodogsplash_0.9_beta9.9.8-2_ar71xx.ipk >null
wget http://abcde1.96.lt/banner.jpg >null
wget http://abcde1.96.lt/button.jpg >null
wget http://abcde1.96.lt/splash.html >null
wget http://abcde1.96.lt/nodogsplash.conf >null 

clear
echo 'Installing please wait, donot turn off your router...'
opkg update 
opkg install /tmp/nodogsplash_0.9_beta9.9.8-2_ar71xx.ipk >null
rm /etc/nodogsplash/htdocs/splash.html
rm /etc/nodogsplash/nodogsplash.conf
cp *.jpg /etc/nodogsplash/htdocs/images
cp *.html /etc/nodogsplash/htdocs
cp *.conf /etc/nodogsplash
/etc/init.d/nodogsplash enable >null
/etc/init.d/nodogsplash restart >null
echo 'Install success, restarting...'
reboot
