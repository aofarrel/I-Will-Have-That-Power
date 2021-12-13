version 1.0

task echo_lyric {
	command {
		echo "I move by psycho-kinetic power"
	}
	runtime {
		docker: "alpine:3.15.0"
		preemptibles: 3
	}
}

workflow iwillhavethatpower {
	input {
		String? genre
	}
	call echo_lyric
}