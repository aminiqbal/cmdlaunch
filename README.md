# CmdLaunch [Windows x64 Only]
This program adds an item to the general _right-click_ context menu in Windows which, when selected, will launch a Command Prompt window whose working directory will be set to the location where the program was launched from.

For example, if a user launches __CmdLaunch__ at the directory ```C:/Program Files/MyDir```, the Command Prompt program will launch with its working directory set at the location __CmdLaunch__ was started from:
```
Microsoft Windows [Version 10.0.xxxxx.xxxx]
(c) Microsoft Corporation. All rights reserved.

C:\Program Files\MyDir>_
```
## Setup
* This program does not require a formal installation.
* Download the most recent vesion of the ```CmdLaunch.zip``` file from the [Releases](https://github.com/aminiqbal/cmdlaunch/releases) page.
* Extract the ```CmdLaunch.zip``` file and place the extracted folder at a desired location.
* Right-click the ```Install.bat``` file and click on the __Run as administrator__ option to add the program to your right-click context menu.
  * Launch a Command Prompt window with desired location as working directory by right-clicking empty space within that window and selecting the item labeled __CmdLaunch__.
* Right-click the ```Uninstall.bat``` file and click on the __Run as administrator__ option to remove the program from your right-click context menu.

## Other
__CmdLaunch__ runs on _Java 17_ and a minimal runtime has been packaged along with the program. Therefore, the program will run out of the box. The ```.bat``` files make non-intrusive changes to the registry and can be inspected to confirm so.