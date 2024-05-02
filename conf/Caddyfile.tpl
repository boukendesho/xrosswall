{
	admin off

	log default {
                output stdout
		format console
	}
}

${SERVER_DOMAIN} {
	encode gzip

	log

	tls ${TLS_CONTENTS}

	route / {
		respond "It Works!"
	}

	route /${WS_PATH} {
		uri strip_prefix /${WS_PATH}
		reverse_proxy localhost:${V2RAY_PORT}
	}
}
