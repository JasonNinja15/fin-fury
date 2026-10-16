# Fin Fury

A side-view underwater shooter for one to six players. You're a very small fish with a very large gun. Shoot jellyfish, crabs, turtles, swordfish, sharks, orcas and whales, collect the parts they drop, and build your handgun up into a huge red laser.

**Play:** https://jasonninja15.github.io/fin-fury/

## Two zones

Every swim starts in **the Sunlit Zone**: jellyfish, crabs, sea turtles, swordfish, sharks, orcas and whales. Their parts build the handgun up to a rifle, a bazooka and the Huge Red Laser.

Once you have the laser, blast the cracked rock near the seabed on the Sunlit Zone's east wall with it, or with any stronger gun. After a few seconds it breaks (and stays open for everyone in the room), and a tunnel leads down into **the Twilight Zone**, which is twice as deep. Its creatures are deep jellyfish, bristlemouths, viperfish, swallowers, giant squid and sperm whales. Their parts unlock four more guns: the **Bubble Blaster**, the **Light Show**, the **Tooth Shooter** and the **Mega Beam**, a wider laser in your fish's own colour. The tunnel on the Twilight Zone's west wall leads back up.

Every Twilight creature has more health than an orca. Twilight parts also buy **fish health** on the upgrade screen, in five steps from 100 up to 450. Each step heals you fully.

Every part you pick up heals you. A stinger heals 5, and each creature further down the list heals 5 more, up to 65 for a sperm whale's ambergris.

## Install it as an app (Chromebooks included)

1. Open the link above in Chrome.
2. Press **Install app** on the title screen, or use the install icon at the right end of Chrome's address bar.
3. Fin Fury now opens from the app launcher in its own window. Single player works offline once it has been opened online.

If installing is blocked, press **Download file** on the title screen to save `fin-fury.html`, then open it in Chrome from the Files app. That copy plays offline too. It needs an internet connection for multiplayer, and it uses plain fonts when offline.

## Playing together

1. One player presses **Play together**, picks **Co-op**, **PvP** or **PvE + PvP**, and presses **Create room**.
2. Share the five-character room code.
3. Everyone else presses **Play together**, types the code, and presses **Join**.
4. The host presses **Dive in**. Players who join later drop straight into the running game.

No account is needed. Players connect browser to browser over WebRTC, using the free public [PeerJS](https://peerjs.com) server to find each other. The host's page runs the creatures, so if the host leaves, the room closes. Some strict school or office networks block these connections.

The host's difficulty (**Normal**, **Frenzy** or **Insanity**) and **Guns Galore** setting apply to everyone in the room.

## Controls

| Key | Action |
| --- | --- |
| W A S D / arrow keys | Swim |
| Mouse | Aim |
| Left click (hold) | Shoot |
| Shift or Space | Dash (you can't be hurt mid-dash) |
| E | Gun upgrades |
| Esc | Pause (in a room, the ocean keeps going) |
| M | Mute |

On phones and tablets, put your left thumb down anywhere on the left half and drag to swim. Put your right thumb down anywhere on the right half and drag to aim and shoot, or just hold it still to lock on to the nearest creature. Tap **Dash** to dodge. Touch controls turn on by themselves the first time you touch the screen.

## Files

- `src/fin-fury.html`: the game. It's also published as a claude.ai artifact, which adds its own page wrapper.
- `build.sh`: builds `index.html` from it, adding the page wrapper, the app manifest and the offline service worker.
- `manifest.webmanifest`, `sw.js`, `icon-192.png`, `icon-512.png`: what makes it installable and playable offline.
