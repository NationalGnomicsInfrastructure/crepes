process TASTE_TEST {
    input:
    path plated

    output:
    path "results.txt"

    script:
    """
    cat $plated > results.txt
    echo " Taste test passed!" >> results.txt
    """
}
