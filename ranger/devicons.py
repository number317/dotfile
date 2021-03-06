#!/usr/bin/python
# coding=UTF-8

# all those glyphs will show as weird squares if you don't have the correct patched font
file_node_extensions = {
    '7z'       : '',
    'a'        : '',
    'ai'       : '',
    'apk'      : '',
    'asm'      : '',
    'asp'      : '',
    'aup'      : '',
    'avi'      : '',
    'bat'      : '',
    'bmp'      : '',
    'bz2'      : '',
    'c'        : '',
    'c++'      : '',
    'cab'      : '',
    'cbr'      : '',
    'cbz'      : '',
    'cc'       : '',
    'cfg'      : '',
    'class'    : '',
    'clj'      : '',
    'cljc'     : '',
    'cljs'     : '',
    'cmake'    : '',
    'coffee'   : '',
    'conf'     : '',
    'cp'       : '',
    'cpio'     : '',
    'cpp'      : '',
    'cs'       : '',
    'css'      : '',
    'cue'      : '',
    'cvs'      : '',
    'cxx'      : '',
    'd'        : '',
    'dart'     : '',
    'db'       : '',
    'deb'      : '',
    'diff'     : '',
    'dll'      : '',
    'doc'      : '',
    'docx'     : '',
    'dump'     : '',
    'edn'      : '',
    'efi'      : '',
    'ejs'      : '',
    'el'       : 'λ',
    'elf'      : '',
    'epub'     : '',
    'erl'      : 'λ',
    'exe'      : '',
    'f#'       : '',
    'fifo'     : '|',
    'fish'     : '',
    'flac'     : '',
    'flv'      : '',
    'fs'       : '',
    'fsi'      : '',
    'fsscript' : '',
    'fsx'      : '',
    'gem'      : '',
    'gif'      : '',
    'go'       : '',
    'gz'       : '',
    'gzip'     : '',
    'h'        : '',
    'hbs'      : '',
    'hrl'      : '',
    'hs'       : '',
    'htaccess' : '',
    'htpasswd' : '',
    'htm'      : '',
    'html'     : '',
    'ico'      : '',
    'img'      : '',
    'ini'      : '',
    'iso'      : '',
    'jar'      : '',
    'java'     : '',
    'jl'       : '',
    'jpeg'     : '',
    'jpg'      : '',
    'js'       : '',
    'json'     : '',
    'jsx'      : '',
    'key'      : '',
    'less'     : '',
    'lha'      : '',
    'lhs'      : '',
    'list'     : '',
    'lock'     : '',
    'log'      : '',
    'lua'      : '',
    'lzh'      : '',
    'lzma'     : '',
    'm4a'      : '',
    'm4v'      : '',
    'markdown' : '',
    'md'       : '',
    'mkv'      : '',
    'ml'       : 'λ',
    'mli'      : 'λ',
    'mov'      : '',
    'mobi'     : '',
    'mp3'      : '',
    'mp4'      : '',
    'mpeg'     : '',
    'mpg'      : '',
    'msi'      : '',
    'mustache' : '',
    'o'        : '',
    'ogg'      : '',
    'otf'      : '',
    'pdf'      : '',
    'php'      : '',
    'pl'       : '',
    'pm'       : '',
    'png'      : '',
    'pub'      : '',
    'ppt'      : '',
    'pptx'     : '',
    'psb'      : '',
    'psd'      : '',
    'py'       : '',
    'pyc'      : '',
    'pyd'      : '',
    'pyo'      : '',
    'rar'      : '',
    'rb'       : '',
    'rc'       : '',
    'rlib'     : '',
    'rom'      : '',
    'rpm'      : '',
    'rs'       : '',
    'rss'      : '',
    'rtf'      : '',
    's'        : '',
    'so'       : '',
    'scala'    : '',
    'scm'      : 'λ',
    'scss'     : '',
    'sh'       : '',
    'slim'     : '',
    'sln'      : '',
    'sql'      : '',
    'sqlite'   : '',
    'styl'     : '',
    'suo'      : '',
    'svg'      : '',
    'swift'    : '',
    't'        : '',
    'tar'      : '',
    'tgz'      : '',
    'ts'       : '',
    'txt'      : '',
    'twig'     : '',
    'vim'      : '',
    'vimrc'    : '',
    'vue'      : '﵂',
    'ttf'      : '',
    'wav'      : '',
    'webm'     : '',
    'xbps'     : '',
    'xhtml'    : '',
    'xls'      : '',
    'xlsx'     : '',
    'xml'      : '',
    'xul'      : '',
    'xz'       : '',
    'yaml'     : '',
    'yml'      : '',
    'zip'      : '',
}

dir_node_exact_matches = {
    '.git'                             : '',
    'Codes'                            : '',
    'Desktop'                          : '',
    'Documents'                        : '',
    'Downloads'                        : '',
    'Dotfiles'                         : '',
    'Dropbox'                          : '',
    'Musics'                           : '',
    'Pictures'                         : '',
    'Public'                           : '',
    'Templates'                        : '',
    'Videos'                           : '',
}

file_node_exact_matches = {
    '.Xauthority'                      : '',
    '.Xdefaults'                       : '',
    '.Xresources'                      : '',
    '.bash_aliases'                    : '',
    '.bashprofile'                     : '',
    '.bash_profile'                    : '',
    '.bash_logout'                     : '',
    '.bash_history'                    : '',
    '.bashrc'                          : '',
    '.dmrc'                            : '',
    '.dockerignore'                    : '',
    '.DS_Store'                        : '',
    '.fasd'                            : '',
    '.fehbg'                           : '',
    '.gitconfig'                       : '',
    '.gitattributes'                   : '',
    '.gitignore'                       : '',
    '.inputrc'                         : '',
    '.jack-settings'                   : '',
    '.mime.types'                      : '',
    '.nvidia-settings-rc'              : '',
    '.pam_environment'                 : '',
    '.profile'                         : '',
    '.recently-used'                   : '',
    '.selected_editor'                 : '',
    '.vim'                             : '',
    '.vimrc'                           : '',
    '.viminfo'                         : '',
    '.xinitrc'                         : '',
    '.xinputrc'                        : '',
    'config'                           : '',
    'dropbox'                          : '',
    'Dockerfile'                       : '',
    'exact-match-case-sensitive-1.txt' : 'X1',
    'exact-match-case-sensitive-2'     : 'X2',
    'favicon.ico'                      : '',
    'a.out'                            : '',
    'bspwmrc'                          : '',
    'sxhkdrc'                          : '',
    'Makefile'                         : '',
    'Makefile.in'                      : '',
    'Makefile.ac'                      : '',
    'config.mk'                        : '',
    'config.m4'                        : '',
    'config.ac'                        : '',
    'configure'                        : '',
    'Rakefile'                         : '',
    'gruntfile.coffee'                 : '',
    'gruntfile.js'                     : '',
    'gruntfile.ls'                     : '',
    'gulpfile.coffee'                  : '',
    'gulpfile.js'                      : '',
    'gulpfile.ls'                      : '',
    'ini'                              : '',
    'ledger'                           : '',
    'package.json'                     : '',
    'package-lock.json'                : '',
    '.ncmpcpp'                         : '',
    'playlists'                        : '',
    'known_hosts'                      : '',
    'authorized_keys'                  : '',
    'license'                          : '',
    'lock'                             : '',
    'LICENSE.md'                       : '',
    'LICENSE'                          : '',
    'LICENSE.txt'                      : '',
    'mimeapps.list'                    : '',
    'node_modules'                     : '',
    'procfile'                         : '',
    'react.jsx'                        : '',
    'README.rst'                       : '',
    'README.md'                        : '',
    'README.markdown'                  : '',
    'README'                           : '',
    'README.txt'                       : '',
    'user-dirs.dirs'                   : '',
    'webpack.config.js'                : '',
}

def devicon(file):
  if file.is_directory:
      if file.is_link:
          return dir_node_exact_matches.get(file.relative_path, '')
      else:
          return dir_node_exact_matches.get(file.relative_path, '')
  return file_node_exact_matches.get(file.relative_path, file_node_extensions.get(file.extension, ''))
