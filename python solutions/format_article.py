import re
def solution(text, width):
    # Initialize the result list with top and bottom borders
    result = ["*" * (width + 2)]

    # Function to add a line with proper indentation and width
    def add_line(line):
        result.append("*" + line.ljust(width) + "*")

    # Split the text into sentences
    # sentences = []
    # current_sentence = ''
    # for char in text:
    #     current_sentence += char
    #     if char in '.?!':
    #         sentences.append(current_sentence.strip())
    #         current_sentence = ''
    
    sentences = re.findall(r'([\s,A-z]*[?!.])', text)

    # Iterate through each sentence
    for sentence in enumerate(sentences):
        # Split the sentence into words
        words = sentence.split()

        # Initialize line
        current_line = ""

        # Iterate through each word
        for word_idx, word in enumerate(words):
            # Check if adding the word fits within the width
            if len(current_line) + len(word) + 1 <= width:
                if current_line:
                    current_line += " " + word
                else:
                    if word_idx == 0:  # Add two spaces only if it's not the first word in the sentence
                        current_line += "  " + word
                    else:
                        current_line += word
            else:
                add_line(current_line.ljust(width))  # Add the current line
                current_line = word  # Start a new line

        # Add the last line
        if current_line.strip():
            add_line(current_line.ljust(width))

    # Add bottom border
    result.append("*" * (width + 2))

    return result

# Test the function
text = "Hi! This is the article you have to format properly. Could you do that for me, please?"
width = 16
formatted_text = solution(text, width)
for line in formatted_text:
    print(line)