# Nixian

This repo is my giving up.
I have destroyed my operating system so often, that I am going to refrain from
customizing to much in the future. I'm hoping that I can create a simple setup
project that will install all necessary tools for me to get to working relatively
quickly so that if I break things again its not hard to pick up where I left of.

## Setting up the OS

1. Install debian stable
2. Pick xfce and gnome as the initial window managers because we need some of
    their dependencies sadly (although xfce4 will be installed automatically
    later)
3. Immediatly upgrade to debian testing (multiple applications including my wifi
    driver seem to work much better here, unfortunately we do loose the
    immediate ability to install minecraft)

## Add user to sudoers file

```bash
su
sudo usermod -aG sudo username
```

## Clone the repo

Run `bash setup.sh`

## Startpage

There is a `startpage.html` that you may use in your browser if you don't want
to add the bookmarks everytime.
