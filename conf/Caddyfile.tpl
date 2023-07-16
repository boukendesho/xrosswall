{
	admin off

	log default {
		format console
	}
}

${SERVER_DOMAIN} {
	encode gzip

	tls ${TLS_CONTENTS}

	route / {
		respond "It Works!"
	}

	route /${WS_PATH} {
		uri strip_prefix /${WS_PATH}
		reverse_proxy localhost:${V2RAY_PORT}
	}
}
