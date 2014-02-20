# add tpope's pathogen path helper to Vim for easing plugin install/management.
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo 'execute pathogen#infect()' >> ~/.vimrc

# enter the Vim plugin directory for use by the next 2 sections
cd ~/.vim/bundle

# add s-expression helper plugins to Vim
git clone https://github.com/guns/vim-sexp.git
git clone https://github.com/tpope/vim-sexp-mappings-for-regular-people.git

# add tpope's clojure helper Vim plugins
git clone git://github.com/tpope/vim-fireplace.git
git clone git://github.com/tpope/vim-classpath.git
git clone git://github.com/guns/vim-clojure-static.git

# setup leiningen, "without setting your hair on fire"
mkdir -p ~/bin
cd ~/bin
wget https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod a+x lein
./lein

