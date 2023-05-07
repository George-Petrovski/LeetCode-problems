=begin
What to Expect
This assessment will take about 2 hours. We want you to do your best, so take the assessment on your computer (not phone!) in a quiet, distraction-free environment.

We encourage you to complete all sections of the assessment in one session. Once the 90-minute Coding Challenge timer starts, it doesn’t stop – even if you exit. If you need to take a break, the best time to do it is after the Coding Challenge and in-between sections. You don’t need to exit the assessment to take a quick break between sections. If you do exit out of the assessment, your work will be saved. When you return, you will start from where you left off. Remember, you must complete all 4 sections below before we can consider you for a Software Development Engineer (SDE) role.

Coding Challenge: this timed section takes 90 minutes; work through 2 coding problems
Work Simulation: typically takes 15 minutes; work through software development decisions faced by SDEs at Amazon
Software Engineering Work Style Survey: typically takes 5 minutes; answer questions about how you approach software engineering work
Amazon Work Style Survey: typically takes 5 minutes; answer questions about how you approach work in general
Once you’ve completed the assessment, you’ll see a confirmation screen verifying that all your responses have been received. Then, you’ll complete a 1 minute Feedback Survey.
=end

#Q1
#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'maxSetSize' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY riceBags as parameter.
#
require 'set'
def maxSetSize(riceBags)
    # Write your code here
    maxB = 1
    rice_set = Set.new(riceBags)
    riceBags.each do |b|
        next if b == 1
        sq = Math.sqrt(b).to_i
        if sq * sq != b
            new = b
            steps = 0
            while rice_set.include?(new)
                new = new * new
                steps += 1
            end
            maxB = steps if maxB < steps
        end
    end
    return maxB >= 2 ? maxB : -1
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')
