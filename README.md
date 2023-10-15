# docker and portanior install

Setup access to GitHub private repository. 
Copy and paste the following commands. From the system, you intend to do a git clone from. 
Execute the following commands.

```
cd ~/.ssh
```

```
ssh-keygen -t rsa
```

```
cat id_rsa.pub
```
Copy and paste the key from above into github for ssh access.
When doing a git clone make sure you use ssh.

```
cd ~
```

```
git clone git@github.com:derekzacharias/dockerinstall.git
```

# Start and enable Docker
```
sudo systemctl start docker
sudo systemctl enable docker
```

# Allow current user to run Docker commands
```
sudo usermod -aG docker $USER
```

#Install docker
```
cd docker install
```

```
chmod +x dockerinstall.sh
```

```
./dockerinstall.sh
```


Sit back and enjoy, this will take a few minutes, go and get some coffee.
