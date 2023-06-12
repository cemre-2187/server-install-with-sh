#!/bin/sh
cd yerli-robot
git stash
git pull https://cemre-2187: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@github.com/RexvenCompany/yerli-robot.git
pm2 restart index.js