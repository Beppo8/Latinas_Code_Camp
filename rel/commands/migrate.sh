#!/bin/sh

release_ctl eval --mfa "MyApp.ReleaseTasks.migrate/1" --argv -- "$@"