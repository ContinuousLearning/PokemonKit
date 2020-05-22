generate:
	gyb --line-directive="" \
		-o Sources/PokemonKit/Types+Resource.swift \
		Types+Resource.swift.gyb \
		< resource-conformance.csv

clean:
	rm Sources/PokemonKit/Types+Resource.swift
