> Not in a usable state yet

# Easy Queuing

This is under microsocopic slow development

## Purpose

This shall become an easy to use high level library for client applications to talking to backends via messages.  In future this might be used for in-app and cross-communication as well.

`NQ` was created to solve the problem that ZeroMQ does not offer a reliable message transport.

`NQ` will utilize ZeroMQ prominently in the middleware component, which will provide a webservice talking to `NQ` backends via ZeroMQ.

So the full commincation structure of `NQ` will be following bi-directional communication path:

    Client <-> NQ(1) <-> Browser <-> Webservice <-> ZeroMQ <-> NQ(2) <-> Service

Notes:

- `Client` and `Service` can switch roles (the protocol is absolutely symmetric), so both are handled the same from the `NQ` perspective.

- `Client` and `Service` are only different in their role, as usually the `Client` establishes the connection to the `Backend` and initiates the first message.  But this is no requirement of `NQ`.

- You can change the transport between `NQ(1)` and `NQ(2)` on the fly without `Client` and `Service` even noticing.  All you need to establish is a bi-directional communication channel or some polling-request-response method for this.
  - The shown path is the standard way which will be implemented first for NQ.


## State

Example/Client:

- JavaScript: in development, unusable
- Python: probably
- Java: not planned
- PHP: not planned
- C/lib: not planned
- Bash: not planned

Transport/Browser:

- JavaScript: in development, unusable
- Python: no
- Java: no
- PHP: no
- C/lib: no
- Bash: no

Middleware/Webservice:

- JavaScript: perhaps
- Python: probably
- Java: perhaps
- PHP: in development, unusable
- C/lib: no
- Bash: no

Transport/ZeroMQ:

- JavaScript: perhaps
- Python: in development, unusable
- Java: perhaps
- PHP: in development, unusable
- C/lib: perhaps
- Bash: perhaps

Example/Service:

- JavaScript: perhaps
- Python: in development, unusable
- Java: perhaps
- PHP: not planned
- C/lib: perhaps
- Bash: perhaps

JS transport methods:

- AJAX `window.XMLHttpRequest`: in development, unusable
- AJAX `window.XMLHttpRequest2`: not planned
- HTML5 `window.postMessage`: planned
- HTML5 `window.sessionStorage`: planned
- HTML5 `window.indexedDB`: not planned
- HTML5 `window.WebSocket`: probably

