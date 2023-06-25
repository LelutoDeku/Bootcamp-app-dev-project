#!/bin/bash
set -e
curl -X POST -F 'file=@images.jpeg' localhost:8087/predict