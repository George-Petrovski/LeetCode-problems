# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    i = 1
    j = n
    while i < j
        pivot = (i+j)/2
        if is_bad_version(pivot)
            j = pivot
        else
            i = pivot + 1
        end
    end
    i
end