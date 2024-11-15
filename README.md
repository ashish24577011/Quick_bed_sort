# PROJ 01: Quick_bed_sort

To begin the process, two files, `demo.tsv` and `file_paths.tsv`, were generated to manage the file paths of the bed files. The `awk` command was utilized to process and create files for `shuf.a.bed.gz` and `shuf.b.bed.gz`.

Next, a Python program was developed, along with Snakemake rules, to process the bed files and separate them into individual files. The sorting task was handled by a shell script, `to_sort.sh`, included in the Snakemake workflow.

## Steps to Run the Program:

1. **Create the necessary script**: A script named `quick_sort.sh` was created, which integrates the required programs, including the Python script.
   
2. **Snakemake Workflow**: The Snakemake file used is `smt.smk`, and a folder named `script_for_sort` was created to store the shell script `to_sort.sh`.

3. **Make the script executable**: The `quick_sort.sh` file was activated with the following command to make it executable:
   ```bash
   chmod +x quick_sort.sh
   ```

4. **Run the script**: Finally, the program is executed by running the following command:
   ```bash
   sh quick_sort.sh
   ```
