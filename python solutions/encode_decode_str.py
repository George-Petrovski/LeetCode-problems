from typing import List


class Codec:
    def encode(self, strs: List[str]) -> str:
        """Encodes a list of strings to a single string.
        """
        res = ",".join([str(len(x)) for x in strs])
        res += "*"
        res += "".join(strs)
        return res
        # res = ""
        # for s in strs:
        #     res += str(len(s)) + "#" + s
        # return res

    def decode(self, s: str) -> List[str]:
        """Decodes a single string to a list of strings.
        """
        sep = -1
        for i, c in enumerate(s):
            if c == "*":
                sep = i
                break
        len_arr = [int(x) for x in s[:sep].split(',')]
        res = []
        start = sep + 1
        for l in len_arr:
            res.append(s[start:start+l])
            start = start + l
        return res
        # res, i = [], 0
        # while i < len(s):
        #     j = i
        #     while s[j] != "#":
        #         j += 1
        #     length = int(s[i:j])
        #     res.append(s[j + 1 : j + 1 + length])
        #     i = j + 1 + length

        # return res



# Your Codec object will be instantiated and called as such:
# codec = Codec()
# codec.decode(codec.encode(strs))