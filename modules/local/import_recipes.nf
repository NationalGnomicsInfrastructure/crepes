process IMPORT_RECIPES {
    input:
    path recipes

    output:
    path "recipes.txt", emit: recipes

    script:
    """
    cat $recipes > recipes.txt
    """
}
