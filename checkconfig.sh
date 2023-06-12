cd e-commerce-robot
echo "#MAIL" >> apiserver/.config.env 
echo "MAIL_USER=noreply.emparazon@gmail.com" >> apiserver/.config.env 
echo "MAIL_PASSWORD=Playtime12!" >> apiserver/.config.env 
git stash
git pull https://cemre-2187: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@github.com/RexvenCompany/e-commerce-robot.git
npm install
pm2 restart apiserver
# cat apiserver/.config.env 
# echo "###############################################################################"
