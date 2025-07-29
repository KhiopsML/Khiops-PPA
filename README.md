# Khiops apt repository

## Usage

Install the PPA
```bash
curl -s --compressed "https://khiopsml.github.io/Khiops-PPA/ubuntu/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/khiops.gpg >/dev/null
sudo echo "deb [signed-by=/etc/apt/trusted.gpg.d/khiops.gpg] https://khiopsml.github.io/Khiops-PPA/ubuntu ./" > /etc/apt/sources.list.d/khiops.list
```

And install Khiops
```bash
sudo apt update
sudo apt install khiops
```

## Sources
- https://assafmo.github.io/2019/05/02/ppa-repo-hosted-on-github.html
- https://github.com/assafmo/ppa/tree/master