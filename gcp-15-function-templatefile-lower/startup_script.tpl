 #! /bin/bash
 sudo apt update
 sudo apt -y install apache2

# Copy website assets from bucket
sudo gsutil cp gs://${bucket_name}/./website/index.html /home/admin/index.html
sudo gsutil cp gs://${bucket_name}/./website/Globo_logo_Vert.png /home/admin/Globo_logo_Vert.png

# Replace default website with downloaded assets
sudo rm /var/www/html/index.html
sudo cp /home/admin/index.html /var/www/html/index.html
sudo cp /home/admin/Globo_logo_Vert.png /var/www/html/Globo_logo_Vert.png
