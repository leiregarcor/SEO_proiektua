mkdir /usr/local/searx/

#python-en ingurune birtuala instalatzeko:
sudo apt-get install python3-virtualenv virtualenv #suposatuz python3 erabiltzen dugula
#ingurune birtual bat sortzeko:
virtualenv env --python=python3 #honek hurrengo estruktura sortzen du: env/
																		  #bin/
																		  #include/
																		  #lib/
																		  #  site-packages/
#ingurune birtuala aktibatzeko, bin karpetaren activate script-a exekutatu
$ source bin/activate

#ingurune birtuala desaktibatzeko
deactivate
																		  
