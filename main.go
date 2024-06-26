package main

import "unsafe"

func main() {
	var p *int
	p = (*int)(unsafe.Pointer(uintptr(0xdeadbeef))) // 试图访问一个非法的内存地址
	*p = 0                                          // 尝试写入数据，触发 SIGSEGV
}
