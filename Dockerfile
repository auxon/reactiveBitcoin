FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y libglew-dev libglu1-mesa-dev freeglut3-dev mesa-common-dev curl oauth sdl2 opengl GLEW nlohmann/json Range-v3
RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Give back control
USER root
