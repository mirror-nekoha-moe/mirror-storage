#!/bin/bash

export $(grep -v '^#' ../.env | xargs)

sudo mount ${storagePathNew}

