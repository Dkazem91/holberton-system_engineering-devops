## 0x04. Loops, conditions and parsing

**What you should learn from this project**

       At the end of this project you are expected to be able to explain,
       without the help of Google:

* How to create SSH keys
* What is the advantage of using #!/usr/bin/env bash over #!/bin/bash
* How to use while, until and for loops
* How to use if, else, elif and case condition statements
* How to use the cut command
* What are files and other comparison operators, and how to use them

**Exercises**

**0. Create a SSH RSA key pair**

**1. For Holberton School loop**

     Write a Bash script that displays Holberton School 10 times.

Requirement:

* You must use the for loop (while and until are forbidden)

**2. While Holberton School loop**

     Write a Bash script that displays Holberton School 10 times.

Requirements:

* You must use the while loop (for and until are forbidden)

**3. Until Holberton School loop**

     Write a Bash script that displays Holberton School 10 times.

Requirements:

* You must use the until loop (for and while are forbidden)

**4. If 9, say Hi!**

     Write a Bash script that displays Holberton School 10 times, but for the
     9th iteration, displays Holberton School and then Hi on a new line.

Requirements:

* You must use the while loop (for and until are forbidden)
* You must use the if statement

**5. 4 bad luck, 8 is your chance**

     Write a Bash script that loops from 1 to 10 and:

* displays bad luck for the 4th loop iteration
* displays good luck for the 8th loop iteration
* displays Holberton School for the other iterations
Requirements:

* You must use the while loop (for and until are forbidden)
* You must use the if, elif and else statements

**6. Superstitious numbers**

     Write a Bash script that displays numbers from 1 to 20 and:

* displays bad luck from China for the 4th loop iteration
* displays bad luck from Japan for the 9th loop iteration
* displays bad luck from Italy for the 17th loop iteration
Requirements:

* You must use the while loop (for and until are forbidden)
* You must use the case statement

**7. Clock**

     Write a Bash script that displays the time for 12 hours and 59 minutes:

* display hours from 0 to 12
* display minutes from 1 to 59
Requirements:

* You must use the while loop (for and until are forbidden)
  Note that in this example, we only display the first 70 lines using the
  head command.

**8. For ls**

     Write a Bash script that displays:

* The content of the current directory
* In a list format
* Where only the part of the name after the first dash is displayed
  (refer to the example)
Requirements:

* You must use the for loop (while and until are forbidden)
* Do not display hidden files

**9. To file, or not to file**

     Write a Bash script that gives you information about the holbertonschool file.

Requirements:

* You must use if and, else (case is forbidden)
* Your Bash script should check if the file exists and print:
  * if the file exists: holbertonschool file exists
  * if the file does not exist: holbertonschool file does not exist
* If the file exists, print:
  * if the file is empty: holbertonschool file is empty
  * if the file is no empty: holbertonschool file is not empty
  * if the file is a regular file: holbertonschool is a regular file
  * if the file is not a regular file: (nothing)

**10. FizzBuzz**

      Write a Bash script that displays numbers from 1 to 100.

Requirements:

* Displays FizzBuzz when the number is a multiple of 3 and 5
* Displays Fizz when the number is multiple of 3
* Displays Buzz when the number is a multiple of 5
* Otherwise, displays the number
* In a list format