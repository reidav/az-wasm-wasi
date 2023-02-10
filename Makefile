.PHONY: all
all : wasm azfunction

wasm:
	@echo 'Compiling wasm ...'
	@cd wasm && cargo install && wasm-pack build --target nodejs

azfunction:
	@echo 'Compiling azfunction ...'
	@cd azfunction && npm install