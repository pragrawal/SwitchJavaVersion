# SwitchJavaVersion

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
