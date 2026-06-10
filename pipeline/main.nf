#!/usr/bin/env nextflow
// hash:sha256:d3977726e419bc0b7d00c76202d5237f390ab7765727075a0a001855a5362f6b

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_1 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

	cpus 1
	memory '7.5 GB'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_1

	script:
	"""
	#!/usr/bin/env bash
	set -e

	export CO_CAPSULE_ID=1c40bced-b7eb-41cb-9d2d-1d714f8e31e8
	export CO_CPUS=1
	export CO_MEMORY=8053063680

	mkdir -p capsule
	mkdir -p capsule/data && ln -s \$PWD/capsule/data /data
	mkdir -p capsule/results && ln -s \$PWD/capsule/results /results
	mkdir -p capsule/scratch && ln -s \$PWD/capsule/scratch /scratch

	echo "[${task.tag}] cloning git repo..."
	if [[ "\$(printf '%s\n' "2.20.0" "\$(git version | awk '{print \$3}')" | sort -V | head -n1)" = "2.20.0" ]]; then
		git -c credential.helper= clone --filter=tree:0 "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	else
		git -c credential.helper= clone "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_1_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_2 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

	cpus 1
	memory '7.5 GB'

	publishDir "$RESULTS_PATH", mode: 'copy', saveAs: { filename -> new File(filename).getName() }

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/*'

	script:
	"""
	#!/usr/bin/env bash
	set -e

	export CO_CAPSULE_ID=1c40bced-b7eb-41cb-9d2d-1d714f8e31e8
	export CO_CPUS=1
	export CO_MEMORY=8053063680

	mkdir -p capsule
	mkdir -p capsule/data && ln -s \$PWD/capsule/data /data
	mkdir -p capsule/results && ln -s \$PWD/capsule/results /results
	mkdir -p capsule/scratch && ln -s \$PWD/capsule/scratch /scratch

	echo "[${task.tag}] cloning git repo..."
	if [[ "\$(printf '%s\n' "2.20.0" "\$(git version | awk '{print \$3}')" | sort -V | head -n1)" = "2.20.0" ]]; then
		git -c credential.helper= clone --filter=tree:0 "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	else
		git -c credential.helper= clone "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_args}

	echo "[${task.tag}] completed!"
	"""
}

workflow {
	// run processes
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_1()
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_2(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_1)
}
