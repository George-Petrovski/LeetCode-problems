from typing import List
class Solution:
    def numUniqueEmails(self, emails: List[str]) -> int:
        set_ = set()
        for i in emails:
            final_email = ""
            email = i.split("@")
            email[0] = email[0].replace(".","")
            if "+" in email[0]:
                index = email[0].index("+")
                email[0] = email[0][:index]
            final_email += email[0] + "@" + email[1]
            set_.add(final_email)
        return len(set_)