# Audio-Files

First step is to wget all files. 

Once you have files on Pi, run: 
chmod +x setup_audio.sh
chmod +x setup_audio2.sh

Then run: 
sudo ./setup_audio.sh

After reboot, run: 
sudo ./setup_audio2.sh

Finally, to test: 
aplay -D hw:2,0 file_stereo.wav
