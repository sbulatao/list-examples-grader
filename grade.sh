# Create your grading script here

set -e

#CP = ''.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission 

# Is this the correct file submitted
if [ -f "list-methods-lab3.txt" ]

then
# if the file exist, this prints out
echo "File is CORRECT"

else
# if the FILE does NOT exist, this prints out
echo "File is NOT CORRECT"

fi

cp TestListExamples.java student-submission/

cd student-submission/

echo "In Student Submission"

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java

echo "Compiled"

java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples

