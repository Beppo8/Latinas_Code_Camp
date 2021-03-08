#!/bin/sh

release_ctl eval --mfa "MyApp.ReleaseTasks.rollback/1" --argv -- "$@"