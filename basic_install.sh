# Install programs and tools I use

# this has caused issues for me in the past
# manual install is often needed
echo "[+] Make sure you executed"
echo "xcode-select --install"
echo "[+] before using this"

# Install brew
echo "[+] Installing brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# installing git
echo "[+] Installing git"
brew install git

# installing insomnia
echo "[+] Installing insomnia"
brew install insomnia 

# installing node
echo "[+] Installing node & npm"
brew install node 

# installing go
echo "[+] Installing go"
brew install go

# installing firefox
echo "[+] Installing firefox"
brew install firefox 

# installing vscodiuem (VSCode without spyware)
echo "[+] Installing vscodium"
brew install --cask vscodium

# installing spotify
echo "[+] Installing spotify"
brew install --cask spotify

# installing neofetch (very important)
echo "[+] Installing neofetch"
brew install neofetch 

echo "====== Done with installing ======"