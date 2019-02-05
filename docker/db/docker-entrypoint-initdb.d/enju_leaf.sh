#!/bin/sh
psql template1 -U postgres -c 'CREATE EXTENSION pgcrypto;'

