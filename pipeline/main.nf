#!/usr/bin/env nextflow
// hash:sha256:bd807994a3d51c037973fa0535c8db1b428903841585314420c30f9078ad25c9

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_1 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

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

	ln -s "/tmp/data/${params.data_name}__data-config/$path1" "capsule/data/$path1" # id: 7c301f12-d69e-4e51-9b9d-9df03066bc1b

	echo "[${task.tag}] cloning git repo..."
	if [[ "\$(printf '%s\n' "2.20.0" "\$(git version | awk '{print \$3}')" | sort -V | head -n1)" = "2.20.0" ]]; then
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_1_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_2 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

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
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_3 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

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

	ln -s "/tmp/data/${params.datasubset_name}" "capsule/data/${params.datasubset_name}" # id: bacb8982-892d-437b-b732-de1257e7a398

	echo "[${task.tag}] cloning git repo..."
	if [[ "\$(printf '%s\n' "2.20.0" "\$(git version | awk '{print \$3}')" | sort -V | head -n1)" = "2.20.0" ]]; then
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_5 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_9
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_12

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
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_5_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_4 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

	cpus 1
	memory '7.5 GB'

	input:
	path 'capsule/data/row_splits.txt'
	path 'capsule/data/'
	path 'capsule/data/'

	output:
	path 'capsule/results/*', emit: to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_10

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
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_6 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

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
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_7 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

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
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_args}

	echo "[${task.tag}] completed!"
	"""
}

// capsule - Build precomputed annotation indices - all capsules via git
process capsule_build_precomputed_annotation_indices_all_capsules_via_git_8 {
	tag 'capsule-5443678'
	container "registry.codeocean.allenneuraldynamics.org/capsule/1c40bced-b7eb-41cb-9d2d-1d714f8e31e8"

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
		git -c credential.helper= clone --filter=tree:0 https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	else
		git -c credential.helper= clone https://github.com/CAVEconnectome/precomputed_annotation_indices_capsules.git capsule-repo
	fi
	mv capsule-repo/code capsule/code && ln -s \$PWD/capsule/code /code
	rm -rf capsule-repo

	echo "[${task.tag}] running capsule..."
	cd capsule/code
	pip install -r requirements.txt --break-system-packages
	chmod +x run
	./run ${params.capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_args}

	echo "[${task.tag}] completed!"
	"""
}

workflow {
	// input data
	data_config_to_build_precomputed_annotation_indices_all_capsules_via_git_1 = Channel.fromPath("../data/${params.data_name}__data-config/*", type: 'any', relative: true)

	// run processes
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_1(data_config_to_build_precomputed_annotation_indices_all_capsules_via_git_1)
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_2(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_2_2.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_3(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_3_3.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_5(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_5_7.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_4(capsule_build_precomputed_annotation_indices_all_capsules_via_git_2.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_4.flatten(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_5.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_3.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_4_6.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_6(capsule_build_precomputed_annotation_indices_all_capsules_via_git_1.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_8.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_5.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_6_9.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_7(capsule_build_precomputed_annotation_indices_all_capsules_via_git_4.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_10, capsule_build_precomputed_annotation_indices_all_capsules_via_git_6.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_11.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_5.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_7_12.collect())
	capsule_build_precomputed_annotation_indices_all_capsules_via_git_8(capsule_build_precomputed_annotation_indices_all_capsules_via_git_7.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_13.collect(), capsule_build_precomputed_annotation_indices_all_capsules_via_git_6.out.to_capsule_build_precomputed_annotation_indices_all_capsules_via_git_8_14.flatten())
}
