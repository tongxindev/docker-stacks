# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG OWNER=jupyter
ARG BASE_CONTAINER=zhanjun/jupyter:apollo-auto-notebook-v1
FROM $BASE_CONTAINER

USER root

#RUN usermod ${NB_USER} -aG sudo
#RUN echo "wit ALL=(ALL) NOPASSWD:ALL " >> /etc/sudoers

#COPY kernels/* /usr/local/share/jupyter/kernels/

COPY kernels /opt/conda/share/jupyter/kernels/

RUN fix-permissions "/home/${NB_USER}"
RUN fix-permissions "${CONDA_DIR}"


# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}

WORKDIR "${HOME}"
# ENV PATH for python verison differ