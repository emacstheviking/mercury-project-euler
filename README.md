# mercury-project-euler

My attempt at increasing my brains numerical capability using Mercury

I had heard of this for a long time ago but a recent conversation on LinkedIn
lately has made me want to return and this time,

 - not run away
 - use Mercury

 What's Mercury? It's the coolest, toughest SOB language you haven't learned
 yet. It's on a level with LISP for being a paradigm shifter. I highly advise
 giving it a look.

It awaits you here:

[MERCURY Home page](https://mercurylang.org)

These sample solutions were built with Mercury 22.01, released 31 March 2022.


# Setting Up

The examples all started from use of the `mcnew` utility which greatly helps
getting started with learning Mercury, well, I think so but I am biased
because I wrote it. It was the first Mercury program I wrote to help me...
write mercury!


## Dependencies

These instructions are for *nix/Mac, I can't help with Windows as I don't have
it or use it I'm afraid,

 - git
 - working installed Mercury compiler
 - folder called $HOME/bin on your PATH

Assuming you have both `git` and `mmc` available from the command line,
checkout the mcnew project, make it and install it

    $ git clone https://github.com/emacstheviking/mcnew.git
    $ cd mcnew
    $ make
    $ make install

That's all done, next, go into the project euler problem folder you want to
build and just:

    $ make

Voila. All done. Rinse repeat for any of the problem solutions.
