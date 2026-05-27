process COOK_CREPES {
    label 'process_high'

    input:
    path batter

    output:
    path "crepes.txt", emit: crepes

    script:
    """
    cat $batter > crepes.txt
    echo "Cooking crepes..." >> crepes.txt
    """
}
