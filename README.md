# C# Modules
This repo contains all C# modules which be used in projects.


## Concept
Suppose we want to implement a feature over some frameworks.

For eg,. we wanna implement `http` networking on frameworks: `Net, Asp, Unity`.
We will create below 4 repositories instead of 3 repositories to share source code between frameworks.
Note that, we should use same namespace `Tool.Compet.Http` on repos.

```bash
	# Shared part (written in C#)
	https://github.com/darkcompet/cs-http.git
	# Implementation of .NET Core
	https://github.com/darkcompet/cs-net-http.git
	# Implementation of Asp
	https://github.com/darkcompet/cs-asp-http.git
	# Implementation of Unity
	https://github.com/darkcompet/cs-unity-http.git
```

Note that, each lib in framework is based on their core lib,
for eg,. `cs-net-http` is based on `cs-net` which is based on `cs`.


## How this project was made

- Setup

```bash
	# Init git
	git init
	nano README.md

	# Create modules folder
	mkdir -p tool/compet && cd tool/compet

	# Add C# libs
	git submodule add https://github.com/darkcompet/cs.git
	git submodule add https://github.com/darkcompet/cs-http.git
	
	# Add .NET Core libs
	git submodule add https://github.com/darkcompet/cs-net.git
	git submodule add https://github.com/darkcompet/cs-net-json.git
	git submodule add https://github.com/darkcompet/cs-net-http.git
	git submodule add https://github.com/darkcompet/cs-net-efcore.git
	
	# Add ASP.NET Core libs
	git submodule add https://github.com/darkcompet/cs-asp.git
	git submodule add https://github.com/darkcompet/cs-asp-photon.git
	
	# Add Unity libs
	git submodule add https://github.com/darkcompet/cs-unity.git
	git submodule add https://github.com/darkcompet/cs-unity-log.git
	git submodule add https://github.com/darkcompet/cs-unity-json.git
	git submodule add https://github.com/darkcompet/cs-unity-http.git
	git submodule add https://github.com/darkcompet/cs-unity-preference.git
	git submodule add https://github.com/darkcompet/cs-unity-photon.git

	# Make console app
	dotnet new console
```


## How to create new lib

```bash
	# Turn off root git
	mv .git .git-tmp

	# Make new module
	# For faster, just copy a module from tool/compet to current folder.
	mkdir [cs-asp-newmodule] && cd [cs-asp-newmodule]

	# Publish the module
	# For faster, go with vscode Lens plugin
	mkdir src
	touch .gitignore README.md
	git init
	git add --all
	git commit -m "Initial commit"
	git push
	cd ..

	# Delete the module and Get back git
	rm -rf [cs-asp-newmodule]
	mv .git-tmp .git

	# Add the module to this project
	cd tool/compet
	git submodule add https://github.com/darkcompet/[cs-asp-newmodule].git
	cd ../..
```


## Tips

- Remove a submodule

```bash
	# Goto directory of added submodules and Delete from git
	cd tool/compet
	git submodule deinit -f cs-core
	git rm -f cs-core

	# Delete from disk
	rm -rf .git/modules/tool/compet/cs-core

	# Delete record from .gitmodules
	Manually delete lines of the submodule from file `.gitmodules`
```
