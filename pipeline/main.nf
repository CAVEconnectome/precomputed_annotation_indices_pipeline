#!/usr/bin/env nextflow
// hash:sha256:5ee07c15f30d887600af377d146bd0a80668258a1f082e97caaa6a959353c764

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_1 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	val path1

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_2
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_3
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_5
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_5_7
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_8
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_9_15
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_10_17
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_13_23
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_14_24
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_34

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
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
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_13 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_14_25
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_27
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_32

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_13_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_2 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
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
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
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
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_5 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_9
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_12
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_33

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_5_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_9 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_10_16
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_18
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_31

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_9_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_10 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_19
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_12_22

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_10_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_14 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_28
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_16_30

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_14_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_4 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/row_splits.txt'
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_10
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_20
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_26

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_6 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_11
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_14

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_11 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_12_21

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_15 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_16_29

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_7 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_13

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_12 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	publishDir "$RESULTS_PATH", mode: 'copy', saveAs: { filename -> new File(filename).getName() }

	input:
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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_12_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_16 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	publishDir "$RESULTS_PATH", mode: 'copy', saveAs: { filename -> new File(filename).getName() }

	input:
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*'
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_35

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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_16_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_8 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	publishDir "$RESULTS_PATH", mode: 'copy', saveAs: { filename -> new File(filename).getName() }

	input:
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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_17 {
	tag 'capsule-5443678'
	container "$REGISTRY_HOST/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8:94b89e4eedd63b0fd3d7ea314137edb6"

	cpus 1
	memory '7.5 GB'

	publishDir "$RESULTS_PATH", mode: 'copy', saveAs: { filename -> new File(filename).getName() }

	input:
	path 'capsule/data/'
	path 'capsule/data/'
	path 'capsule/data/'
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
	git -C capsule-repo checkout 227a7f8f525184fa208351cb0eef8d096c6f6d88 --quiet
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_args}

	echo "[${task.tag}] completed!"
	"""
}

workflow {
	// input data
	synapses_pni_2_v1_filtered_view__v1412__data_config_to_build_precomputed_annotation_indices_all_capsules_via_git_1 = Channel.fromPath("../data/synapses_pni_2_v1_filtered_view__v1412__data-config/*", type: 'any', relative: true)

	// run processes
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_1(synapses_pni_2_v1_filtered_view__v1412__data_config_to_build_precomputed_annotation_indices_all_capsules_via_git_1)
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_13(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_13_23.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_2(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_2.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_3(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_3.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_5(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_5_7.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_9(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_9_15.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_10(capsule_build_precomputed_annotation_indices_all_capsules_via_git_9.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_10_16.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_10_17.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_14(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_14_24.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_13.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_14_25.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_4(capsule_build_precomputed_annotation_indices_all_capsules_via_git_2.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_4.flatten(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_5.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_3.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_6.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_6(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_8.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_5.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_9.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_11(capsule_build_precomputed_annotation_indices_all_capsules_via_git_9.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_18.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_10.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_19.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_4.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_11_20)
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_15(capsule_build_precomputed_annotation_indices_all_capsules_via_git_4.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_26, capsule_build_precomputed_annotation_indices_all_capsules_via_git_13.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_27.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_14.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_15_28.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_7(capsule_build_precomputed_annotation_indices_all_capsules_via_git_4.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_10, capsule_build_precomputed_annotation_indices_all_capsules_via_git_6.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_11.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_5.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_12.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_12(capsule_build_precomputed_annotation_indices_all_capsules_via_git_11.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_12_21.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_10.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_12_22.flatten())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_16(capsule_build_precomputed_annotation_indices_all_capsules_via_git_15.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_16_29.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_14.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_16_30.flatten())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_8(capsule_build_precomputed_annotation_indices_all_capsules_via_git_7.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_13.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_6.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_14.flatten())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_17(capsule_build_precomputed_annotation_indices_all_capsules_via_git_9.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_31.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_13.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_32.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_5.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_33.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_34, capsule_build_precomputed_annotation_indices_all_capsules_via_git_16.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_17_35.collect())
}
