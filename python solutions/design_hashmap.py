class MyHashMap:

    def __init__(self):
        self.myhmap = [None] * 1000001

    def put(self, key: int, value: int) -> None:
        self.myhmap[key] = value

    def get(self, key: int) -> int:
        val = self.myhmap[key]
        return val if val != None else -1

    def remove(self, key: int) -> None:
        self.myhmap[key] = None

# Your MyHashMap object will be instantiated and called as such:
# obj = MyHashMap()
# obj.put(key,value)
# param_2 = obj.get(key)
# obj.remove(key)