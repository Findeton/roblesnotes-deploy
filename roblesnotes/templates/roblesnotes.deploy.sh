#!/bin/bash

# This file is part of roblesnotes-deploy
# Copyright (C) 2017  Felix Robles Elvira <felrobelv@gmail.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# stop on first error
# well, not exactly: http://mywiki.wooledge.org/BashFAQ/105
set -e

#echo on
set -x

cd {{ config.roblesnotes.path }}  && sudo -u {{ config.roblesnotes.user }} git pull
cd {{ config.roblesnotes.path }}  && sudo -u {{ config.roblesnotes.user }} hugo -v
rm -Rf {{ config.roblesnotes.public_folder }}/*
cd {{ config.roblesnotes.path }}/public && cp -R . {{ config.roblesnotes.public_folder }}