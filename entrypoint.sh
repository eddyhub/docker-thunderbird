#!/bin/bash
set -e

if [ "$1" = 'thunderbird' ]; then
	USER_UID=${USER_UID:-1000}
	USER_GID=${USER_GID:-1000}

	# create user group
	if ! getent group thunderbird >/dev/null; then
		groupadd -f -g ${USER_GID} thunderbird
	fi

	# create user with uid and gid matching that of the host user
	if ! getent passwd thunderbird >/dev/null; then
		adduser --uid ${USER_UID} --gid ${USER_GID} \
			--disabled-login \
			--no-create-home \
			--gecos 'thunderbird' thunderbird
	fi
	su thunderbird -c "$@"
else
	exec "$@"
fi
