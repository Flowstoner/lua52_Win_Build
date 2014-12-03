
@echo off
call clean.bat

mkdir bin
mkdir lib
mkdir build
cd build

echo.
echo Building source...
cl /MD /O2 /W3 /c /DLUA_BUILD_AS_DLL ../src/*.c

echo.
echo Linking assemblies...
ren lua.obj lua.o
ren luac.obj luac.o
ren wmain.obj wmain.o

link /DLL /SUBSYSTEM:CONSOLE /IMPLIB:lua5.2.lib /OUT:lua5.2.dll *.obj
link /SUBSYSTEM:CONSOLE /OUT:lua.exe lua.o wmain.o lua5.2.lib
lib /SUBSYSTEM:CONSOLE /OUT:lua5.2-static.lib *.obj wmain.o
link /SUBSYSTEM:CONSOLE /OUT:luac.exe luac.o wmain.o lua5.2-static.lib

echo.
echo Copying files to proper directories...
copy /Y lua.exe ..\\bin\\lua.exe
copy /Y lua5.2-static.lib ..\\lib\\lua5.2-static.lib
copy /Y luac.exe ..\\bin\\luac.exe
copy /Y lua5.2.dll ..\\bin\\lua5.2.dll

cd ..
echo Done.
@echo on