backup:
	cd home && ./backup
	cd cron && ./backup
	pacman -Qet > pkgs.txt

apply:
	cd home && ./apply
	cd cron && ./apply

pkg:
	#git clone "https://aur.archlinux.org/yay.git"
	#cd yay && makepkg -si
	#rm -rf yay
	yay -S `cat pkgs.txt | cut -d' ' -f 1)`
