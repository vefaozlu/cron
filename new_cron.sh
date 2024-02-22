echo "" >| emptycron
crontab emptycron
rm emptycron

crontab -l > mastercron
echo "MAILTO=vefaozlu01@gmail.com" > mastercron
echo "* * * * * node /root/Projects/test/fetch.js" >> mastercron
echo "* * * * * sleep 10; node /root/Projects/test/fetch.js" >> mastercron
echo "* * * * * sleep 20; node /root/Projects/test/fetch.js" >> mastercron
echo "* * * * * sleep 30; node /root/Projects/test/fetch.js" >> mastercron
echo "* * * * * sleep 40; node /root/Projects/test/fetch.js" >> mastercron
echo "* * * * * sleep 50; node /root/Projects/test/fetch.js" >> mastercron

crontab mastercron
rm mastercron
