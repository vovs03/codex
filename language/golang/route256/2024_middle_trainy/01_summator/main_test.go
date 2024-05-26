package main

import "testing"

func BenchmarkMain(b *testing.B) {
	for i := 0; i < b.N; i++ {
		main()
	}
}

// func Benchmark(b *testing.B, size int) {BenchmarkMain()}
// func BenchmarkMain10k(b *testing.B) {BenchmarkMain(b, 10000)}
