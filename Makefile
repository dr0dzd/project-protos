PROTOS := $(shell find proto -name '*.proto')
OUT_DIR := proto_gen

generate:
	protoc -I=proto \
	  --go_out=$(OUT_DIR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
	  $(PROTOS)

clean:
	find $(OUT_DIR) -name "*.pb.go" -delete
