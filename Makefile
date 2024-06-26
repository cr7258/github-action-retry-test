# 默认目标
all: fail

# 始终失败的目标
fail:
	@echo "Starting the build process..."
	@echo "Simulating a build failure"
	#docker build -t cr7258/test:v1 .
	go run main.go
	@echo "finish"

# 清理目标（这个实际上不会失败）
clean:
	@echo "Cleaning up..."
	@echo "Clean completed successfully"

.PHONY: all fail clean