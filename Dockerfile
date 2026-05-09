# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# install custom nodes into comfyui
RUN comfy node install --exit-on-fail rgthree-comfy@1.0.2507112302 --mode remote

RUN comfy model download --url https://huggingface.co/alexxxiy/vtc/resolve/main/il_arthemy_comics_v60.safetensors --relative-path models/checkpoints --filename il_arthemy_comics_v60.safetensors

