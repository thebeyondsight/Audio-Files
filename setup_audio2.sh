# Step 3: Find the sound card
echo "Listing audio devices..."
aplay -l
echo "Please note the card and device numbers for the amplifier."

# Step 4: Update /etc/asound.conf
echo "Updating /etc/asound.conf..."
read -p "Enter card number: " card
read -p "Enter device number: " device

cat << EOF | sudo tee /etc/asound.conf > /dev/null
pcm.!default {
    type plug
    slave.pcm {
        type hw
        card $card
        device $device
    }
}

ctl.!default {
    type hw
    card $card
}
EOF

echo "/etc/asound.conf updated with card $card and device $device."

# Step 6: Reboot
echo "Rebooting the system..."
sudo reboot
