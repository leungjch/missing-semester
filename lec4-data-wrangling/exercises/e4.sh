#!/bin/bash
journalctl |  sed -n -E 's/.*\Startup finished in ([0-9]+\.[0-9]+).*/\1/p' | datamash max 1 min 1 mean 1 median 1
