#!/bin/bash

echo 'syncing'
rsync -au /text-generation-webui/* /workspace/text-generation-webui

echo 'downloading model $LOAD_MODEL'

. /app/venv/bin/activate && python3 /workspace/text-generation-webui/download-model.py $LOAD_MODEL

echo "Launching Server"

. /app/venv/bin/activate && python3 server.py ${CLI_ARGS}

sleep infinity

