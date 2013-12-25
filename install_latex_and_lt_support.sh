#!/bin/bash

if [ ! -f ~/.latex_install_log ]
then
  su -c 'yum -y install texlive texlive-latex texlive-was texlive-wrapfig texlive-subfigure texlive-multirow texlive-lithuanian texlive-tablefootnote* texlive-lipsum* texlive-appendix'
  mkdir tmp

  cd tmp
  wget http://www.vtex.lt/tex/distfiles/littex-20081028.tar.gz
  tar xvf littex-20081028.tar.gz

  su -c 'mkdir -p /usr/local/share/texmf'
  su -c 'cp -r texmf/* /usr/local/share/texmf'
  su -c 'mktexlsr'
  su -c 'updmap-sys --enable /usr/local/share/texmf/fonts/map/dvips/lt/l7x-urwvn.map'
  su -c 'fmtutil-sys --all'
  cd ../
  su -c 'rm -rf tmp'

  echo 'success' >> ~/.latex_install_log
fi