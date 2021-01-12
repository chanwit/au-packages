docker run --rm -v $PWD:$PWD -w $PWD linuturk/mono-choco pack
sudo chown $(whoami):$(whoami) *.nupkg
