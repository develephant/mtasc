# Installation

  1. Download and untar in `~/`.

    tar -xf mtasc-bin-<arch-version>.tar

  2. Move to folder `/usr/local/mtasc`.

    cd ~/
    mv mtasc /usr/local/
    rm mtasc-bin-*

  3. Make a link.

    cd /usr/local/bin
    ln -s /usr/local/mtasc/mtasc-* mtasc

  4. Test it.

    mtasc

You should see the version information and help output.  If that worked, you're all set!
