﻿# cd llvm-project/llvm;

$source_dir = "./llvm-project/llvm";
$build_dir = "./buildall";

Set-Variable CC=cl;
Set-Variable CXX=cl;

cmake `
	-S $source_dir `
	-B $build_dir `
	-G Ninja `
	-DCMAKE_BUILD_TYPE=Release `
	-DLLVM_DEFAULT_TARGET_TRIPLE=host `
	-DLLVM_TARGETS_TO_BUILD=all `
	-DLLVM_ENABLE_PROJECTS="clang;lld;lldb;clang-tools-extra" `
	-DLLVM_ENABLE_RUNTIMES="compiler-rt;libunwind;libc;libcxxabi;libcxx" `
;
	
cmake --build $build_dir;