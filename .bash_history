git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
sudo fdisk -l
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd1
sudo pvs
sudo vgcreate vg_temp /dev/sdd1
sudo pvs
sudo fdisk -l
sudo vgs
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
sudo vgs
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvs
sudo lvcreate -L +100%FREE vg_temp -n lv_swap
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo lvs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvs
sudo mkfs.ex4 /dev/mapper/vg_temp-lv_swap
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
free -h
sudo mkswap /dev/mapper/vg_temp-lv_swap
free -h
swapon /dev/m
sudo swapon /dev/mapper/vg_temp-lv_swap
cat /proc/swaps
free -h
sudo ls -l /var/lib/docker/
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo ls -l /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo ls -l /var/lib/docker/
sudo systemctl status docker
sudo systemctl restart docker
sudo systemctl status docker
sudo ls -l /var/lib/docker/
lsblk -f
ls /
sudo mkdir /work
ls /
sudo mount /dev/mapper/vg_datos-lv_workareas /work
df -h
sudo lsblk -f
pwd
mkdir RTA_Examen_$(date + "+%Y%m%d")
ls
sudo fdisk -l >> /RTA_Examen_20240705/PuntoA.txt
sudo fdisk -l >> ~/RTA_Examen_20240705/PuntoA.txt
ls
sudo pvcreate /dev/sdd1 >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo fdisk /dev/sdd" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo pvcreate /dev/sdd1" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo pvs" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo vgcreate vg_temp /dev/sdd1" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo pvs" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo fdisk /dev/sdc" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo pvcreate /dev/sdc1" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo vgcreate vg_datos /dev/sdc1" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo lvcreate -L +1.5G vg_datos -n lv_workareas" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo lvcreate -l +100%FREE vg_temp -n lv_swap" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo lvcreate -L +5M vg_datos -n lv_docker" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "free -h" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo mkswap /dev/mapper/vg_temp-lv_swap" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo swapon /dev/mapper/vg_temp-lv_swap" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "cat /proc/swaps" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "free -h" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo ls -l /var/lib/docker/" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo systemctl status docker" >> ~/RTA_Examen_20240705/PuntoA.txt
echo "sudo systemctl restart docker" >> ~/RTA_Examen_20240705/PuntoA.txt
cat /RTA_Examen_20240705/PuntoA.txt
cat RTA_Examen_20240705/PuntoA.txt
ls
sudo vim baez_AltaUser-Groups.sh
ll
ls
mkdir -p ~/RTA_Examen_20240705/PuntoB
mv ~/baez_AltaUser-Groups.sh ~/RTA_Examen_20240705/PuntoB/
echo "sudo vim baez_AltaUser-Groups.sh" > ~/RTA_Examen_20240705/PuntoB/PuntoB.txt
cd ~/RTA_Examen_20240705/PuntoB
ls
cd ~/RTA_Examen_20240705
ls
cd -
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker/
ls
mkdir web
mv index.html web/
cd web/
vim Dockerfile
docker build -t web1:baez
docker build -t web1:baez .
sudo docker build -t web1:baez .
cd ..
sudo docker build -t web1:baez .
ll
mv web/Dockerfile .
ll
sudo docker build -t web1:baez .
sudo swapoff ce546caf-fbe7-452c-8b14-60df0389b415
sudo fdisk /dev/sdc
docker login
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd5
sugo vgs
sudo vgs
sudo vgextend vg_datos /dev/sdd5
ls -l dev/mapper/vg_datos-lv_docker
ls -l /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo lvs
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -f
df -h
docker build -t web1:baez .
sudo docker build -t web1:baez .
docker run -d -p 80:80 web1:baez
sudo docker run -d -p 80:80 web1:baez
docker ps
sudo docker ps
docker tag web1baez matiasbaezc/web1:baez
sudo docker tag web1baez matiasbaezc/web1:baez
sudo docker tag web1:baez matiasbaezc/web1:baez
sudo docker push matiasbaezc/web1:baez
docker login
docker tag web1:baez matiasbaezc/web1:baez
sudo docker tag web1:baez matiasbaezc/web1:baez
sudo docker push matiasbaezc/web1:baez
docker pull matiasbaezc/web1
sudo docker pull matiasbaezc/web1:baez
sudo docker push matiasbaezc/web1
sudo docker push matiasbaezc/web1:baez
sudo docker tag web1:baez matiasbaezc/web2:baez
sudo docker push matiasbaezc/web2:baez
cd ..
ls
cd ..
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd docker
docker login
sudo usermod -aG docker baez
sudo docker tag web1:baez matiasbaezc/web2:baez
sudo docker push matiasbaezc/web2:baez
cd ..
ls
echo "cd docker/" > ~/RTA_Examen20240705/PuntoC.txt
echo "cd docker/" > ~RTA_Examen20240705/PuntoC.txt
echo "cd docker/" > ~/RTA_Examen20240705/PuntoC.txt
echo "cd docker/" > ~/RTA_Examen_20240705/PuntoC.txt
echo "mkdir web" > ~/RTA_Examen_20240705/PuntoC.txt
echo "mv index.html web/" > ~/RTA_Examen_20240705/PuntoC.txt
echo "cd web/" > ~/RTA_Examen_20240705/PuntoC.txt
echo "vim Dockerfile" > ~/RTA_Examen_20240705/PuntoC.txt
echo "docker build -t web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
echo "docker build -t web1:baez ." > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker build -t web1:baez ." > ~/RTA_Examen_20240705/PuntoC.txt
echo "mv web/Dockerfile ." > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo fdisk /dev/sdc" > ~/RTA_Examen_20240705/PuntoC.txt
echo "docker login" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo fdisk /dev/sdc" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo fdisk /dev/sdd" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo pvcreate /dev/sdd5" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo vgs" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo vgextend vg_datos /dev/sdd5" > ~/RTA_Examen_20240705/PuntoC.txt
echo "ls -l dev/mapper/vg_datos-lv_docker" > ~/RTA_Examen_20240705/PuntoC.txt
echo "ls -l /dev/mapper/vg_datos-lv_docker" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo lvs" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo resize2fs /dev/mapper/vg_datos-lv_docker" > ~/RTA_Examen_20240705/PuntoC.txt
echo "df -f" > ~/RTA_Examen_20240705/PuntoC.txt
echo "df -h" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker build -t web1:baez ." > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker run -d -p 80:80 web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
echo "udo docker ps" > ~/RTA_Examen_20240705/PuntoC.txt
echo "docker tag web1baez matiasbaezc/web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker tag web1baez matiasbaezc/web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker tag web1:baez matiasbaezc/web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker push matiasbaezc/web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
ll
cd RTA_Examen_20240705
ll
cat PuntoC.txt
echo "sudo docker push matiasbaezc/web1:baez" > ~/RTA_Examen_20240705/PuntoC.txt
cat PuntoC.txt
echo "sudo docker push matiasbaezc/web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
cat PuntoC.txt
echo "cd docker/" >> ~/RTA_Examen_20240705/PuntoC.txt
cat PuntoC.txt
echo "mkdir web" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "mv index.html web/" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "cd web/" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "vim Dockerfile" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "docker build -t web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "docker build -t web1:baez ." >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker build -t web1:baez ." >> ~/RTA_Examen_20240705/PuntoC.txt
echo "mv web/Dockerfile ." >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo fdisk /dev/sdc" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "docker login" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo fdisk /dev/sdc" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo fdisk /dev/sdd" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo pvcreate /dev/sdd5" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo vgs" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo vgextend vg_datos /dev/sdd5" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "ls -l dev/mapper/vg_datos-lv_docker" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "ls -l /dev/mapper/vg_datos-lv_docker" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo lvs" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo resize2fs /dev/mapper/vg_datos-lv_docker" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "df -f" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "df -h" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker build -t web1:baez ." >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker run -d -p 80:80 web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker ps" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "docker tag web1baez matiasbaezc/web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker tag web1baez matiasbaezc/web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker tag web1:baez matiasbaezc/web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
echo "sudo docker push matiasbaezc/web1:baez" >> ~/RTA_Examen_20240705/PuntoC.txt
cat PuntoC.txt
cd ..
ll
cd UTN-FRA_SO_Examenes/
ll
cd 202406/
ll
cd ansible/
ll
cd roles/
ansible-galaxy role init estructura 
sudo apt install ansible-core
ansible-galaxy role init estructura 
ll
cd 2do_parcial/
ll
cd tasks/
ll
vim main.yml
cd ..
ll
mkdir templates
ll
cd templates/
ll
cd ..
ll
cd vars/
ll
vim main.yml
cd ..
ll
cd templates/
vim template_01.j2
ll
rm template_01.j2
ll
vim template_01.txt.j2
rm template_01..txt.j2
ll
rm template_01.txt.j2
vim datos_alumno.txt.j2
ll
vim datos_equipo.txt.j2
cd ..
cd vars/
ll
main.yml
vim main.yml
cd ..
cd templates/
cd ..
cat tests/test.yml
ansible-playbook -i /tests/inventory tests/test.yml
vim ansible.cfg
ansible-playbook -i /tests/inventory tests/test.yml
ll
cd templates/
ll
cat datos_equipo.txt.j2
vim datos_equipo.txt.j2
vim datos_alumno.txt.j2
cd ..
cd tasks/
vim main.yml
ip addr show
cd ..
ll
cd vars/
ll
vim main.yml
cd ..
cat /etc/os-release
cd vars/
vim main.yml
nproc
vim main.yml
cd ..
ll
echo "ansible-galaxy role init estructura" >> ~/RTA_Examen_20240705/PuntoD.txt
cat /RTA_Examen_20240705/PuntoD.txt
cat ~/RTA_Examen_20240705/PuntoD.txt
echo "d 2do_parcial/" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "cd 2do_parcial/" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "cd tasks/" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "vim main.yml" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "cd .." >> ~/RTA_Examen_20240705/PuntoD.txt
echo "mkdir templates" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "cd templates/" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "cd vars/" >> ~/RTA_Examen_20240705/PuntoD.txt
echo "vim main.yml" >> ~/RTA_Examen_20240705/PuntoD.txt
cd ~
git init UTNFRA_SO_2do_Parcial_Baez
cd UTNFRA_SO_2do_Parcial_Baez
git config --global user.name matibbaez
git config --global user.email matiascaneda3@gmail.com
cp -r ~/UTN-FRA_SO_Examenes/202406 ./202406
cp -r ~/RTA_Examen_20240705
cp -r ~/RTA_Examen_20240705 ./RTA_Examen_20240705
history -a
