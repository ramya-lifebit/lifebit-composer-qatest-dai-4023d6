nextflow.enable.dsl=2

include { abacas_1 } from './modules/abacas_1/module.nf'
include { gunzip_1 } from './modules/gunzip_1/module.nf'
include { test_python_1 } from './modules/test_python_1/module.nf'

workflow {
input1 = Channel.fromPath(params.abacas_1.meta_scaffold).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), row[1]) }
input2 = Channel.fromPath(params.abacas_1.fasta)
input3 = Channel.fromPath(params.test_python_1.accessions).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), evaluate(row[1])) }
abacas_1(input1, input2)
test_python_1(input3)
gunzip_1(abacas_1.out.output2)
}
