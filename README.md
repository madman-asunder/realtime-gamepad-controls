# **Realtime Gamepad Controls (*Next Gen*)**

**Author**: Adam Sunderman (*AKA: Madman Asunder*)  
[**Official Nexus Mod Page**](https://www.nexusmods.com/witcher3/mods/7475/)  
[**Video Demo**](https://www.youtube.com/watch?v=iSoYiggjnXU)  
[**Github**](https://github.com/madman-asunder/realtime-gamepad-controls)

[**Immersive Motion**](https://www.nexusmods.com/witcher3/mods/1933) Credit: [ksoldberg](https://www.nexusmods.com/witcher3/users/1977596)  
[**Better Torches**](https://www.nexusmods.com/witcher3/mods/1990) Credit: [Syynx](https://www.nexusmods.com/witcher3/users/19327684)   
Testing Thanks: [Dazarius](https://www.nexusmods.com/witcher3/users/12188)  

---

## Important
If you decide to uninstall after using this mod, saves made while using this mod become corrupt and you will be unable to properly
control Geralt. Please follow the uninstallation section of this README to ensure your saves stay usable! I have decided that the pros
of the way that I designed this mod (easy merging with other popular mods like Friendly HUD) outweigh this admittedly very annoying con but
put this at the top of the README so users are aware before using.

---
## General Notes
Realtime Gamepad Controls is only of use to you if you use an XInput controller. This mod will not be compatible
with mouse and keyboard players for general play. The purpose of this mod is to allow for controller players to
eliminate the need for the radial menu entirely and attempts to map your equipment inventory as well as all signs
in a way that has everything accessible in real time. This mod is self-inclusive and does not require the use of extra
software like XPadder or AntiMicro. This mod has not had any localization work done but most of the strings are able
to be localized if desired.

## Controls
This mod completely removes the radial menu as it has a focus on **100% realtime controls** in combat. The radial
menu button (*Left Bumper*) is now the *Sign/QuickSelect* Modifier. When you press LB you will notice that your
quick use item info display will change to show your quick slot items and bombs. These can be toggled and
selected just like potions as long as the modifier is held. While the *Left Bumper* is held down:

	LB + X: cast igni (hold for alternate)
	LB + Y: cast aard (hold for alternate)
	LB + B: cast quen (hold for alternate)
	LB + A: cast yrden (hold for alternate)
	LB + RB: cast axii (hold for alternate)
	LB + Dpad Up: select slotted quick use (RB to use)
	LB + Dpad Down: select slotted bomb (RB to throw)

The cross bow is now mapped to the Right Trigger and is not considered an item anymore. I.E. When you have a
bomb equipped, fire your crossbow, the bomb is still equipped and RB will still throw it without having to
re-equip. While aiming the crossbow dpad up with cycle inventory ammunition. dpad down will select infinite bolts.

If you choose to enable immersive motion integration. the default speed will be walking and run will be a toggle
(double tap to sprint). It is recommended to go into the vanilla settings and make run be Left Thumbstick to be more natural.
When you use Left Thumbstick AND enable immersive motion, spawning roach will move to 'A' (Double Tap)

All other controls stay the same

With that in mind, if you have any mods that modified input.settings in Documents/Witcher 3/ It would
definitely be beneficial to start that file fresh as well. This can be accomplished via deleting input.settings
and starting up witcher 3 and a new one will be generated for you.

## Installation Considerations
This mod makes heavy use of modifying input.settings. Other mods that make additions to this file will be at risk to be harder merges.
Particularly of note, this mod intends to heavily modify the behavior of:

- L3
- LB
- RB
- RT
- A
- X
- Y
- B

you will have to be very careful with other mods that attempt to do anything special with these inputs. However, a mod like FriendlyMeditation
that alter what clicking the right and left thumbstick does will not cause much hassle.

This mod organizes it's settings under the `gameplay` section from the [menu strings community patch](https://www.nexusmods.com/witcher3/mods/3650).
It is not necessary to download this patch as I have all the strings localized. However, you might as well as you will eventually run out of space
for settings. Make sure to `endorse` if you like it!

This mod is now easier to merge with mods like friendlyhud and immersive cam (thank god :D).

## Installation Instructions:
Note: if you are using simple mods and not any overhaul mods (especially if they alter controls), it is more than likely safe to skip steps 1-3

1. Recommended: Backup existing `mods` and `input.settings`
2. Recommended: Clear your `mods` folder and delete your `input.settings`.
3. Recommended: Start Witcher 3 to generate a new `input.settings` file.
4. **Required**: Move `modW3ReduxRGC` folder to `{W3InstallLocation}/mods/modW3ReduxRGC`
5. **Required**: Copy all contents from `input.settings.begin.txt` and paste at the beginning of `input.settings` in your `Documents/Witcher 3` folder
6. **Required**: Copy `bin` folder to `{W3InstallLocation}/bin`
6. **Required** (new to next gen): Add one line to the bottom of `dx11filelist.txt` and `dx12filelist.txt`
  ```
  modW3ReduxRGC.xml;
  ```
7. *Optional*: If you are going to start out with other mods already installed, use a tool like [Script Merger](https://www.nexusmods.com/witcher3/mods/484) 
to handle any conflicts.

You are ready to never need to open that lame radial menu again **:D**

#### Alternatively,

[**Intall Walkthrough**](https://www.youtube.com/watch?v=u_rfXecinzE)  

For an easier installation, I can almost fully recommend installation with [Witcher 3 Mod Manager](https://rd.nexusmods.com/witcher3/mods/2678) by 
[stefan3372](https://rd.nexusmods.com/witcher3/users/42512255). It has proven very successful at installing in my testing. However, as it is 
helping you bind keys (which it will do automatically) it will notice duplicate entries for *CastSignHold*. You will have to choose "Save All" 
repeatedly. If you don't save all bindings for this action, you will not be able to alternate cast all 5 signs. Another consideration is on 
uninstall with Witcher 3 Mod Manager, I have noticed that keybindings stay in the input settings. Not a big deal immediately, but having those 
left over for future installs could lead to future issues.

##### *IMPORTANT*

The Witcher 3 Mod Manager IS NOT fully next gen compatible. I have submitted a PR to make it so: 
[PR](https://github.com/Systemcluster/The-Witcher-3-Mod-manager/pull/33).However, the authors have moved on. I'm going to give it some time 
before hosting a full fork, but in the meantime you can use a preview build that I made to install it automatically (next gen compatible) from:
[W3MM Mod Manager - Next Gen Preview](https://drive.google.com/file/d/1sOmHplCVv3RuMN2EgJye7dyJ9FsiS0dF/view?usp=share_link)

## Features
1. Instant Sign Casting via "Sign/QuickSelect" Modifier Button
2. Instant Quick Selecting of bombs and quick use items via "Sign/QuickSelect" Modifier button
3. Remapped Crossbow to Right Trigger. Crossbow and other items are now completely separated logically.
	- Note: Use Item is still Right Bumper
2. Updated Item Info UI to show last used item (not crossbow). So if you were using a bomb, clicked right trigger to fire a crossbow bolt, the selected item according to the UI is still the bomb. This is to really solidify that the crossbow is not an item.
3. Updated Item Info UI to show bombs and quick use items instead of potions while "Sign/QuickSelect" Modifier button is pressed.
4. Added equip sounds while changing which bombs and quick use items you are using
5. Made the quick use potions (and new bombs/items) a lot smarter. If you use your last bomb or potion and your backup slot has charges, The backup with auto equip
6. Updated Button Prompts UI to show available signs while "Sign/QuickSelect" Modifier is pressed while in combat.
7. Integrated Better Torches
8. Added optional immersive motion integration (can be enabled in mod options)
9. While aiming crossbows you can use up and down arrows to change ammo types

## Uninstall Instructions

[**Uninstall Walkthrough**](https://www.youtube.com/watch?v=uCjNbiMype4)  

On the [Mod Page](https://www.nexusmods.com/witcher3/mods/7475/) download the optional file `Uninstallation Save Fixer`. This file contains
a mod `modForceResetInput` that simply adds one line to `player.ws` that resets the Input Handler on spawn. Once you have fixed all the saves
you care about that suffered this issue (by resaving after loading), you can uninstall this mod at your convenience (you can always reinstall it
if you forgot a save that still has the issue).

### Alternatively
instead of downloading the `Uninstallation Save Fixer`. You can run the following command in the Debug console when you load a broken save:

`ResetInput()`

and then resave to fix your corrupted save.

---

## For Developers Who Clone Repo

This modding template provides a development environment to produce a witcher 3 mod that is well suited for scripting mods that utilize a menu and localized strings (this template defaults to English). It uses shell scripts instead of bat scripts so to use the utilities you will need a bash style shell (i.e. `gitbash`). It provides the following utilities:

1. encoding w3strings
2. encoding witcher script to utf-8 for source control
3. installing to game (ws files will be utf-16le)
4. starting game (and viewing logs)
5. making a release (ws files will be utf-16le)

## How to Use

Search entire project for `TODO` and make sure they end up `TODONE`. These include:

1. updating `scripts\variables.sh`
2. updating `mod-menu.xml`
3. updating `strings\en.w3strings.csv`

## Utilities

### Encoding Strings

```sh
cd scripts
./encode-w3-strings.sh
```

### Releasing

```sh
cd scripts
./release.sh
```

*Note: release will automatically encode strings and witcher script*

### Installing

```sh
cd scripts
./install.sh
```

*Note: On next gen, for first install you will need to manually update `dx11FileList.txt` and `dx12FileList.txt`*

### Running the game

```sh
cd scripts
./run-game.bat
```

*Note: running the game does the following: remove compiled redscripts, install, start the game in debug, tails the logs*

### Encoding src ws files to UTF-8 for source control

```sh
cd scripts
./encode-ws-utf8.bat
```

*Note: this project makes use of a pre-commit hook to prevent source from being committed in utf-16le*
