# QATest -dAi

## Description

Test

## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### nf-core_abacas

**Description**: contiguate draft genome assembly\
**Inputs**: 2\
**Outputs**: 2\
**Parameters**: 0\
**Authors**: @joseespinosa, @drpatelh

### lifebit_gunzip

**Description**: Compresses the provided files with Gunzip.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: 

### lifebitai_test_python

**Description**: A mock python script.\
**Inputs**: 1\
**Outputs**: 0\
**Parameters**: 0\
**Authors**: 

## Inputs

- `--abacas_1.meta_scaffold`: 
- `--abacas_1.fasta`: 
- `--test_python_1.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
