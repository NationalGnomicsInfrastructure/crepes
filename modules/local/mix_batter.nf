process MIX_BATTER {
    label 'process_high'

    input:
    path recipes

    output:
    path "batter.txt", emit: batter

    script:
    """
    echo "Mixing batter from \$(wc -l < $recipes) recipes" > batter.txt
    """
}
