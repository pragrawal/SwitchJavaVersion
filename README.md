# SwitchJavaVersion

A lot of times software engineers working on java technologies, need to use different versions of java for different projects/work on their local development machines. While installing more than one versions of java on a single machine is not a problem, switching from one java version to the other is not pretty straight forward and doing it just with a command certainly needs some prior effort.
While there are a few tools available online which can help you manage multiple java versions and switch between them, my own experience with them has not been particularly fascinating. So, I tried to come up with something of my own that can help you switch between java version effortlessly.
Below, you can find the steps describing how to do this. Once you are done with all these steps, any time you want to use a particular java version, just execute `usejava <java-version>` e.g. `usejava 11` as illustrated below.

Step 1: Install all the java versions that you want to use.

Step 2: Place [usejava.sh](https://github.com/pragrawal/SwitchJavaVersion/blob/master/usejava.sh) in some directory (e.g. your home directory)

Step 3: Add this to your bash_profile – 
```
alias usejava='. <directory-path>/usejava.sh'
e.g. alias usejava='. ~/usejava.sh'
```
Please make a note of the preceding dot (.) and a space before the directory-path. You need to use it exactly the same way.

Step 4: Add execute permission to your script using the chmod command e.g.
```
chmod +x ~/usejava.sh
```

Step 5: Head over to the terminal where you want to run a java command and source the bash_profile and then execute – `usejava <java-version>` e.g.
```
~ prateek$ source ~/.bash_profile 
~ prateek$ usejava 11
Here is the output of java -version:
openjdk version "11.0.2" 2019-01-15
OpenJDK Runtime Environment 18.9 (build 11.0.2+9)
OpenJDK 64-Bit Server VM 18.9 (build 11.0.2+9, mixed mode)
~ prateek$ 
```
Now, whenever you need to switch to a different java version, it's as simple as executing `usejava <java-version>` from the shell where you want that. For instance, if you want to use java 1.8 now, do this -
```
~ prateek$ usejava 1.8
Here is the output of java -version:
java version "1.8.0_77"
Java(TM) SE Runtime Environment (build 1.8.0_77-b03)
Java HotSpot(TM) 64-Bit Server VM (build 25.77-b03, mixed mode)
~ prateek$ 
```
