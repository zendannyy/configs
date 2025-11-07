#!/usr/bin/env bash

#  Homebrew – install or update/upgrade
######################################################

brew_bootstrap() {
  if ! command -v brew &>/dev/null; then
    log_info "Homebrew not found → installing…"
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    log_info "Homebrew found → updating & upgrading…"
    brew update; brew upgrade; brew cleanup
  fi
  
  [[ $(uname -m) == arm64 ]] &&
    { eval "$(/opt/homebrew/bin/brew shellenv)";
      grep -q "/opt/homebrew" ~/.zprofile 2>/dev/null ||
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile; }
}
