#!/bin/bash
if [ -z "$(ls -A /ComfyUI 2>/dev/null)" ]; then
    git clone https://github.com/comfyanonymous/ComfyUI.git /ComfyUI
fi

cd /ComfyUI
pip install -r requirements.txt

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-Manager" ]; then
    git clone https://github.com/ltdrdata/ComfyUI-Manager.git /ComfyUI/custom_nodes/ComfyUI-Manager
fi

python3 main.py --listen 0.0.0.0
