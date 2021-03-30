FROM nvidia/cuda:11.1-cudnn8-devel-ubuntu20.04
CMD  bash


ARG DEBIAN_FRONTEND=noninteractive
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update && \
    apt-get -y --no-install-recommends install apt-utils

RUN apt-get -y --no-install-recommends install wget git gcc build-essential pkg-config
RUN apt-get -y --no-install-recommends install python3-dev python3-pip python3-venv python3-opencv

# =============================================================================
# CREATE A PYTHON VENV AND UPGRADE PYTHON TOOLS
# =============================================================================
ENV VIRTUAL_ENV=/opt/automates_venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install --upgrade setuptools
RUN pip install wheel
# =============================================================================

RUN git clone https://github.com/OpenNMT/OpenNMT-py.git
WORKDIR /OpenNMT-py
RUN git checkout legacy
RUN pip install torch==1.8.1+cu111 torchvision==0.9.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html
RUN python setup.py install
RUN pip install Pillow opencv-python