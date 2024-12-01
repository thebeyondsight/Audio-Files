# Audio-Files

First step is to wget all files. 

wget https://raw.githubusercontent.com/thebeyondsight/Audio-Files/refs/heads/main/setup_audio.sh

wget https://raw.githubusercontent.com/thebeyondsight/Audio-Files/refs/heads/main/setup_audio2.sh

wget https://github.com/thebeyondsight/Audio-Files/raw/refs/heads/main/TestFile_stereo.wav


Once you have files on Pi, run: 

chmod +x setup_audio.sh

chmod +x setup_audio2.sh

Then run: 
sudo ./setup_audio.sh

After reboot, run: 
sudo ./setup_audio2.sh

Finally, to test: 
aplay -D hw:2,0 TestFile_stereo.wav
