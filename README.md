#docker-kpicosim

Do you need [kpicosim](https://marksix.home.xs4all.nl/kpicosim.html) in it's latest version from [2008](https://marksix.home.xs4all.nl/downloads/ "Ok, ok. Debian's version 0.7-1 is patched last time in 2010") ?!?

Probably it's better to klick here: [link](http://giphy.com/search/cute-kitten). If you don't know what kpicosim is, it is definitely the safer choice.

And also, in the glamorous box of shiny details:

- You have to run it on your local docker server!
- You have to use a script, because the docker-run command is too long.
- Mac OS X <=12 not supported.
- [Definitely works on Windows.](http://i.giphy.com/l0HlDmU3l3cMc2rCM.gif "Nope")


# Ru(i)n it

Ok, let's stop this sarcasm and start:

    git clone git@github.com:bebehei/kpicosim-docker.git
    cd kpicosim-docker
    ./run.sh

or, if you may want to adapt it, build it yourself:

    docker build -t bebehei/kpicosim:latest .
