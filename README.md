# Docker and Portanior install

```
cd ~
```

```
wget https://github.com/derekzacharias/dockerinstall.git
```

# Install docker
```
cd docker install
```

```
chmod +x dockerinstall.sh
```

```
./dockerinstall.sh
```
Start and enable Docker
```
sudo systemctl start docker
sudo systemctl enable docker
```

Allow current user to run Docker commands
```
sudo usermod -aG docker $USER
```

Sit back and enjoy, this will take a few minutes, go and get some coffee.
