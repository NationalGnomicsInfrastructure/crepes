#!/usr/bin/env nextflow
nextflow.preview.dsl = 2

include { IMPORT_RECIPES } from './modules/local/import_recipes'
include { MIX_BATTER } from './modules/local/mix_batter'
include { COOK_CREPES } from './modules/local/cook_crepes'
include { PLATE_GARNISH } from './modules/local/plate_garnish'
include { TASTE_TEST } from './modules/local/taste_test'

workflow NFCORE_CREPES {
    take:
    recipes
    ch_versions = Channel.empty()

    main:
    ch_recipes = IMPORT_RECIPES(recipes)
    ch_batter = MIX_BATTER(ch_recipes.recipes)
    ch_cooked = COOK_CREPES(ch_batter.batter)
    ch_plated = PLATE_GARNISH(ch_cooked.crepes)
    TASTE_TEST(ch_plated.plated)

    emit:
    versions = ch_versions
}

workflow {
    NFCORE_CREPES(params.recipes)
}
