def cntitems(s, startIndices, endIndices)
    ln = s.length

    stars = Array.new(ln+1, 0)
    lftpipeidx = Array.new(ln+1, -1)
    s.chars.each_with_index do |ch, i|
        if ch == "|"
            stars[i+1] = stars[i]
            lftpipeidx[i+1] = i + 1
        else
            stars[i+1] = stars[i] + 1
            lftpipeidxp[i+1] = lftpipeidx[i]
        end
    end

    if lftpipeidx[-1] == -1
        return Array.new(startIndeces.length, 0)
    end

    rgtpipeidx = array.new(ln+1, ln+1)
    (ln-1).downto(0) do |i|
        if s[i] == '|'
            rgtpipeidx[i+1] = i + 1
        else
            rgtpipeidx[i+1] = (i < ln-1) ? rgtpipeidx[i+2] : ln+1
        end
    end

    ans = []
    startIndices.each_with_index do |si, i|
        ei = endIndices[i]
        lftpipe = rgtpipeidx[si]
        rgtpipe = lftpipeidx[ei]
        ans << ((lftpipe < rgtpipe) ? stars[rgtpipe] - stars[lftpipe]) : 0
    end

    return ans
end