 # Lua 5.2.3 Windows Build Scripts
Due to a lack of any real documentation on building Lua for Windows I've spent far too much time figuring out the different approaches.  Most have us build through Visual Studio with instructions on how to build the interpeter.  This doesn't help us if we want to embed Lua.  As I am tired of refiguring all of this out every year or two when I need to rebuild Lua from souce due to updates to Visual Studio (this time to VS 2013) and as a result I've created a simple build script for getting this running.

##Compiling
First and foremost you must be building this through the "Developer Command Prompt".  If you're unfamiliar with this it's a command shell with VS's tool paths preconfigured for you making "cl", "link" and other such utilities available to you.  You'll find this in the start menu under Visual Studio Tools.
Compiling is easy:
```batch
build
```
Once finished "lua.exe", "luac.exe" and "lua5.2.dll" will be found in the bin folder.  "lua5.2-static.lib" will be found in the lib folder.  Lastly, you'll find the standard lua includes in the include folder.