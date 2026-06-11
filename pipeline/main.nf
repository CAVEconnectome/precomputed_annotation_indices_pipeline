#!/usr/bin/env nextflow
// hash:sha256:b1e9ce7fc35ef070b3e4a7a7a0aab3b4ba573941c1072578301d910ac76cbcb8

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_1 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:5d56ada5389ebab232cf3c5a341f734b"

	cpus 1
	memory '7.5 GB'

	input:
	val path1

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_2
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_3
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_5

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

	ln -s "/tmp/data/synapses_pni_2_v1_filtered_view__v1412__data-config/$path1" "capsule/data/$path1" # id: 7c301f12-d69e-4e51-9b9d-9df03066bc1b

	echo "[${task.tag}] cloning git repo..."
	if [[ "\$(printf '%s\n' "2.20.0" "\$(git version | awk '{print \$3}')" | sort -V | head -n1)" = "2.20.0" ]]; then
		git -c credential.helper= clone --filter=tree:0 "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	else
		git -c credential.helper= clone "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	fi
	git -C capsule-repo checkout 7965a5570982a83145da9084a2e55f3de8203fba --quiet
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
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:5d56ada5389ebab232cf3c5a341f734b"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/input_splits/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_4

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
	git -C capsule-repo checkout 7965a5570982a83145da9084a2e55f3de8203fba --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_3 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:5d56ada5389ebab232cf3c5a341f734b"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_6

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

	ln -s "/tmp/data/synapses_pni_2_v1_filtered_view__v1412__test1" "capsule/data/synapses_pni_2_v1_filtered_view__v1412__test1" # id: bacb8982-892d-437b-b732-de1257e7a398

	echo "[${task.tag}] cloning git repo..."
	if [[ "\$(printf '%s\n' "2.20.0" "\$(git version | awk '{print \$3}')" | sort -V | head -n1)" = "2.20.0" ]]; then
		git -c credential.helper= clone --filter=tree:0 "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	else
		git -c credential.helper= clone "https://\$GIT_ACCESS_TOKEN@\$GIT_HOST/capsule-5443678.git" capsule-repo
	fi
	git -C capsule-repo checkout 7965a5570982a83145da9084a2e55f3de8203fba --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_4 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:5d56ada5389ebab232cf3c5a341f734b"

	cpus 1
	memory '7.5 GB'

	publishDir "$RESULTS_PATH", mode: 'copy', saveAs: { filename -> new File(filename).getName() }

	input:
	path 'capsule/data/row_splits.txt'
	path 'capsule/data/'
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
	git -C capsule-repo checkout 7965a5570982a83145da9084a2e55f3de8203fba --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_args}

	echo "[${task.tag}] completed!"
	"""
}

workflow {
	// input data
	synapses_pni_2_v1_filtered_view__v1412__data_config_to_build_precomputed_annotation_indices_all_capsules_via_git_1 = Channel.fromPath("../data/synapses_pni_2_v1_filtered_view__v1412__data-config/*", type: 'any', relative: true)

	// run processes
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_1(synapses_pni_2_v1_filtered_view__v1412__data_config_to_build_precomputed_annotation_indices_all_capsules_via_git_1)
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_2(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_2.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_3(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_3.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_4(capsule_build_precomputed_annotation_indices_all_capsules_via_git_2.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_4.flatten(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_5.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_3.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_6.collect())
}
