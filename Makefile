.PHONY:	all	wasm azfunction
all : wasm	azfunction

wasm:
	@echo 'Compiling wasm ...'
	@(cd wasm && cargo build && wasm-pack build --target nodejs)

azfunction:
	@echo 'Compiling azfunction ...'
	@(cd azfunction && npm install)

start:
	@echo 'Starting func ...'
	@(cd azfunction && npm start)