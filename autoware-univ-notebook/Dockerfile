# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG OWNER=jupyter
ARG BASE_CONTAINER=zhanjun/jupyter:autoware-univ-notebook
FROM $BASE_CONTAINER

USER root
# scenario_simulator_v2.
RUN git clone https://github.com/tier4/scenario_simulator_v2.git /autoware/src/scenario_simulator_v2
WORKDIR /autoware/scenario_simulator_v2
#RUN vcs import external < dependency_${ROS_DISTRO}.repos
RUN rosdep update
RUN source /opt/ros/${ROS_DISTRO}/setup.bash && rosdep install -iry --from-paths . --rosdistro ${ROS_DISTRO}
#RUN source /opt/ros/${ROS_DISTRO}/setup.bash && colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release

#RUN chown -R ${NB_USER}:users  "/autoware"

RUN usermod ${NB_USER} -aG sudo
RUN echo "wit ALL=(ALL) NOPASSWD:ALL " >> /etc/sudoers

RUN fix-permissions "/home/${NB_USER}"

# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}

#vscode + webviz + plugin + tools

WORKDIR "${HOME}"
# ENV PATH for python verison differ
