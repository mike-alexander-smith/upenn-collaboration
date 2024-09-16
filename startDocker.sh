
#install docker
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null  
  
  
sudo apt-get update


sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


###start bodenmiller rstudio container
sudo docker run -v /home/mike_alexander_smith:/home/rstudio \
    -e PASSWORD=hyperion1234 -p 8787:8787  \
    ghcr.io/bodenmillergroup/imcdataanalysis:latest
    
    
#start jupyterlab 
 sudo docker run -v /home/mike_alexander_smith:/home/jovyan \
    -p 8888:8888 \
    --user root \
    -e GRANT_SUDO=yes \
    jupyter/datascience-notebook
    
#napari xpra container
sudo docker run -v /home/mike_alexander_smith:/root \
  -it -p 9876:9876 \
  ghcr.io/napari/napari-xpra

#remember to enable port forwarding at 8888 and 8787 on your machine


