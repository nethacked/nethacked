cd `dirname $0`
cd ../unix
sh setup.sh
cd ../..
patch -p1 < sys/osx/osx.patch
echo Configuring game permissions to current user
sed -i.orig "s,GAMEUID  = games,GAMEUID  = `whoami`," Makefile
sed -i.orig "s,GAMEGRP  = bin,GAMEGRP  = `id -gn`," Makefile
