class Trie:

    def __init__(self):
        self.map = dict()

    def insert(self, word: str) -> None:
        try:
            self.map[word] += 1
        except:
            self.map[word] = 1

    def countWordsEqualTo(self, word: str) -> int:
        count = 0
        try:
            count += self.map[word]
        except:
            pass
        return count
        

    def countWordsStartingWith(self, prefix: str) -> int:
        count = 0
        for key in self.map.keys():
            if key.startswith(prefix):
                count += self.map[key]
        return count

    def erase(self, word: str) -> None:
        if word in self.map.keys():
            self.map[word] -= 1
        else:
            self.map.pop(word)


# Your Trie object will be instantiated and called as such:
# obj = Trie()
# obj.insert(word)
# param_2 = obj.countWordsEqualTo(word)
# param_3 = obj.countWordsStartingWith(prefix)
# obj.erase(word)