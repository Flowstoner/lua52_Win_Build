@echo off
echo Cleaning project...
FOR %%I in ( bin lib build ) do @(
	IF exist %%I\ (
		rd /s /q %%I
	)
)