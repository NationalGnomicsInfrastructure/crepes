process PLATE_GARNISH {
    input:
    path crepes

    output:
    path "plated.txt", emit: plated

    script:
    """
    cat $crepes > plated.txt
    echo "Plating with garnish..." >> plated.txt
    """
}
