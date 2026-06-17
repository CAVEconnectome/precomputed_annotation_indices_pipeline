# Precomputed annotation indices

This repo wraps a Code Ocean pipeline repo that produces various indices of precomputed annotations, crucially spatial indices to expedite rapid user interface interactions in Neuroglancer.

At the time of this writing, three indices are produced for a given input of annotation data:

1. ID index
2. Relation index
3. Spatial index

The resulting indices are uploaded to a Google bucket with an accompanying ***info*** file with Neuroglancer's expected folder/file structure to facilitate retrieval of the index (or parts thereof on the fly). The bucket will also contain a ***pipeline_config.json*** file that, amongst other data, provides the GCP bucket URI that Neuroglancer requires. Simply copy that URI from the json file and paste it into the Source field of a Neuroglancer annotation layer and the index will immediately be retrieved and displayed. We'll see a way to get this URI without going directly to the bucket at the end of this documentation.

## Code Ocean vs. Local Nextflow processing

The pipeline can be run in two very different ways in two different environments:

* Code Ocean
* Nextflow

Code Ocean is a full commercial product that runs in a browser and on AWS. It wraps Nextflow with a user-friendly GUI and hides much of the Nextflow complexity from view, so as to ease overall use. If you prefer to run a Code Ocean pipeline outside of the Code Ocean environment, the method consists of exporting the Code Ocean pipeline, which produces a Nextflow pipeline on your local machine, which can then be run locally, or can be transported elsewhere, such as to a differetn cloud architecture to be run via whatever other tools may facilitate Nextflow processing without regard for Code Ocean.

This README explains how to run the pipeline within Code Ocean. For detailed instructions on how to run an exported Nextflow pipeline on a local machine, see the associated file in this repo: ***[Code Ocean - Build Precomputed Annotation Indices pipeline - local Nextflow instructions.txt](https://github.com/CAVEconnectome/precomputed_annotation_indices_pipeline/blob/main/Code%20Ocean%20-%20Build%20Precomputed%20Annotation%20Indices%20pipeline%20-%20local%20Nextflow%20instructions.txt)***
