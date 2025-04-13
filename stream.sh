#ffmpeg \
# -f avfoundation \
#-framerate 30 \     # Optional: Set input framerate
#-i "0" \      # Input device: "0" for video index 0. Change if needed.
#-c:v libx264    \     # Video codec: H.264 (good for streaming)
#-preset ultrafast \    # Encoding speed: faster, less CPU load, lower quality
#-tune zerolatency  \  # Optimize for low latency
#-pix_fmt yuv420p    \ # Pixel format, often needed for compatibility
#-b:v 1000k \           # Video bitrate (e.g., 1 Mbps). Adjust based on desired quality/bandwidth
#-f rtsp \              # Output format: RTSP
#-rtsp_transport tc \  # Use TCP for transport (more reliable than UDP sometimes)
#rtsp://10.175.22.102:8554/webcam