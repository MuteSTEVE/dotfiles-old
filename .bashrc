[[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach

# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/mutesteve/.oh-my-bash'

OSH_THEME="robbyrussell"
OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
  battery
)

source "$OSH"/oh-my-bash.sh

fortune | cowsay

alias nv='nvim'
alias nvb='nvim ~/.bashrc'
alias nvc='cd ~/.config/nvim/ ; nvim'

alias tm='tmux'
alias tk='tmux kill-server'
alias tl='tmux ls'

alias ps='php artisan serve'
alias pg='source ~/pgadmin4/bin/activate ; pgadmin4'
alias p4='pgadmin4'
alias pd='deactivate'
alias ps='php artisan serve'

alias bd='cd ~/Documents/birdie-admin/ ; tmux'
alias crp='cd ~/Documents/crud-php/ ; tmux'

alias nc='ncmpcpp'

alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syu --noconfirm'

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias unlock="sudo rm -rf /var/lib/pacman/db.lck"

[[ ${BLE_VERSION-} ]] && ble-attach
alias bp='cd ~/Documents/belajar-php ; tmux'
