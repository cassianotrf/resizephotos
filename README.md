# README
Resize Photos – Challenge

Given a Webservice endpoint(​ http://54.152.221.29/images.json​ ), that returns a JSON of
ten photos, consume it and generate three different photo formats for each one, that must
be small (320x240), medium (384x288) and large (640x480).

Finally, write a Webservice endpoint, which should use a non-relational
database(MongoDB preferred) and list (in JSON format) all ten photos with their
respective formats, providing their URLs.

Choose the programming language you want and let us know why did you choose it.
Besides the solution itself, write automated tests for your code (using a known framework
or another function/method).

Describe well how to execute your code and/or how to build it. Use the README.md to
describe these points and also other points that you would like to add.

Last, but not least, the use of cache is also welcome and it must be delivered via Github or
Bitbucket.

We are interested in your solution considering:

1. ​ Correctness
2. ​ Readability
3. ​ Automated Tests
4. ​ Execution Time

# Getting Started

For easily checking the website with the 10 pics in all different sizes:
 https://rezizephotos.herokuapp.com/
 
 # For checking the code lines:

Open your termnial to clone the repository locally:

 $ git clone https://github.com/cassianotrf/resizephotos
 
- At the command prompt, access the folder of application:

 $ cd resizephotos

- Bundle

 $ bundle install
 
 - To see the code lines (Sublime editor):
 
 $ stt 

- To run the application:

 $ rails s 
 
 - To see application website, open your brwoser and type:
 
 http://localhost:3000/
 
# STEPS OF MY CODE:
 - Open and parse the json file
 - Read the json file and resise all the pics in 3 different sizes
 - Saving all the photos in Cloudinary
 - Showing all the 30 pics on the website.
 
