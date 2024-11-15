import sys
import pandas as pd

# Read data from metadata files
run_metadata = pd.read_csv("file_paths.tsv", sep="\t")
demo_metadata = pd.read_csv("demo.tsv", sep="\t")

# Set the indexes for easier lookup
run_metadata.set_index("run", inplace=True)
demo_metadata.set_index("demo", inplace=True)

print(run_metadata)
print(demo_metadata)

def get_file_paths(wildcards):
    """Fetch file paths for the given demo."""
    demo_runs = demo_metadata.loc[wildcards.demo, "names"].split(",")
    file_paths = [run_metadata.loc[run, "file_path"] for run in demo_runs]
    return file_paths

rule sort_bed_files:
    input:
        files=lambda wildcards: get_file_paths(wildcards)
    output:
        sorted_file="completed_sorting/{demo}_sorted.bed"
    shell:
        "sh scripts/sort_bed.sh \"{input.files}\" {output.sorted_file}"

