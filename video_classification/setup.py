#!/usr/bin/env python3
# Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.

from setuptools import find_packages, setup

setup(
    name="slowfast",
    version="1.0",
    author="uniformer",
    url="unknown",
    description="uniformer Video Understanding",
    install_requires=[
        "av==12.0.0",
        "decord",
        "fvcore",
        "iopath",
        "matplotlib",
        "opencv-python",
        "pandas",
        "psutil",
        "scikit-learn",
        "simplejson",
        "timm"
    ],
    packages=find_packages(exclude=("configs", "tests")),
)
