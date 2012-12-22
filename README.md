cs-game-tut
===========

An experiment in teaching my kids to program adventure games in coffee script. 

### CoffeeScript

[CoffeeScript](http://coffeescript.org) is a fun language that translates in to JavaScript. JavaScript is less fun to me but is the language used in web browsers, and everything seems to be done in a web browser these days. I could teach my kids about programming using Python which is a popular starting language but the immediate results in a web page seem appealing to me.

### Why and adventure game

My kids have spent a fair amount of time making up adventure games on paper and understand the idea. Transferring it in to a text based program seems like it may be a useful way to get the concepts of programming and possibly web based programming. My plan is to do it as a collection of simple exercises each showing one more feature. 

## Installation

Install node.js from the [website](http://nodejs.org/). node.js lets you run JavaScript outside a web browser. We wont be writing our programs in JavaScript but will rely on it in the background.

Install [brunch](http://brunch.io) by typing the following in a console. 

    npm install -g brunch

We may also need CoffeeScript in the background (not sure)

    npm install -g coffeescript

>### What is the console

>A console is a program that lets you type text based instructions for the computer to perform. It is also sometimes called the command line or terminal. Usually you get the computer to do something by clicking on a menu option or button on the screen. This is called a graphic user interface (GUI). For some things there isn't a GUI available to do what you want so you have to type the instruction in as text in the console. As time goes on somethings just get easier to do using these text commands. 

>To access the console on a Mac, open the terminal application. To access the console on a Windows machine you can select Start->Run and type cmd.exe in the box
    
Starting from scratch is hard, so there is some code already here in this github project. As I finish each exercise I'll post the exercise starting and complete example code. To get the code you need to install an application to talk to the github website and download the code. Go to the [set up git](https://help.github.com/articles/set-up-git) page for detailed information on what to do. In short go to the [git downloads](http://git-scm.com/downloads) page, grab the application and install it on your machine. Alternatively if you are using a Mac you could use one of the GUI Git applications (https://central.github.com/mac/latest). When its working you want to 'clone' the code. That will put a local copy of the code on your computer. It will also keep track of where you got it, so if I update it on github, you can 'pull' down the updates.

Go to a suitable directory on your hard drive.

>### Directories and using the cd command

>    cd {put the path to the directory here}
    
>cd stands for 'Change Directory'. The hard drive is made up of many directories containing files and other directories. If one directory is within another one it is written after the other one with a slash between the two. On a Windows machine the slash is backwards '\'. On a Mac it is forwards '/'

Clone the code!

    git clone https://github.com/ChrisWroe/cs-game-tute.git
    
You should now have a new directory called cs-game-tut, move to it by using the cd command

    cd cs-game-tute
