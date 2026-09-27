# Walker Mobile VR Stereo Interface Demo

This is Walker's independent, title-only copy of the official Godot demo `xr/mobile_vr_interface_demo`. It turns on Godot's built-in "Native mobile" XR interface, renders a small room in stereo, and on desktop lets the arrow keys move the viewpoint; on a phone it is meant to test simple 3DOF head tracking. It is an XR interface smoke test, not a game: there is nothing to do but look and move. It sits in Walker as a partly verified local adaptation with two native-4K Liam films pending and a recovered design package; its wider purpose in Walker is an open question (`design/decisions.md` Q-01). What has been found: headless import and startup pass, and a desktop test observes the XR interface initialising and arrow keys moving the XR origin. Stereo pixels, lens distortion and head tracking are not verified, and the project's mobile main scene (`main_mobile.tscn`) is missing.

## How to run

1. Open `godot/project.godot` in Godot 4.7 (VERIFICATION.md records 4.7.2). The desktop main scene is `godot/main.tscn`.
2. Controls (desktop): the **arrow keys** move the XR origin left/right/forward/back. If the Native mobile interface cannot initialise, the app quits.
3. Mobile: the project's mobile main-scene override names `main_mobile.tscn`, which is absent in the checkout. Mobile deployment is unverified; do not silently substitute the desktop test.

## Design

- [`GDD.md`](GDD.md): recovered design document (identical copy of `design/GDD.md`).
- [`design/DECK.html`](design/DECK.html): review slides.
- [`design/IMPLEMENTATION-MAP.md`](design/IMPLEMENTATION-MAP.md): feature → scene/script/line.
- [`design/decisions.md`](design/decisions.md): open questions (purpose, the missing mobile scene, device validation, renderer and lens distortion).

The GDD is a recovered, unapproved description of what the code does, written by `/gdd reverse` in silent mode. No design gate is signed, and it does not invent a goal the demo does not have.

## Source & license

Independent title-only copy of Godot `xr/mobile_vr_interface_demo` at source commit `a3b5c113112f77291d5f3d1360f33a882fdc52f7`. MIT notice (`LICENSE.md`) and source assets retained; the original checkout is untouched. Walker added one diagnostic, `godot/test_desktop.gd`.

## Status

- Godot 4.7.2 headless import and bounded 120-frame startup exit 0 with no errors. Startup exit alone does not establish XR initialisation, because the source quits if it fails.
- `godot/test_desktop.gd` explicitly observes Native mobile interface initialisation and `viewport.use_xr` (`XR_INITIALIZED=true VIEWPORT_XR=true`), then sends four arrow-key holds: Left/Right move X by −0.195/+0.194 and Up/Down move Z by −0.200/+0.200 in 200 ms holds. These are state checks, not stereo pixel, lens, head-tracking or device-comfort verification. See `VERIFICATION.md` and `FRICTIONAL.md`.
- Desktop arrow keys move the XR origin; the Native mobile interface enables stereo rendering. Mobile 3DOF tracking needs device validation. The source README notes that the Compatibility renderer does not support lens distortion. Stereo pixels and head tracking are not established by headless startup.
- The source mobile main-scene override names `main_mobile.tscn`, absent in the checkout. Mobile deployment remains unverified.
- Both native-4K Liam films remain pending under the shared recording blocker; not review-ready.

Repository: https://github.com/nikbearbrown/walker-xr-mobile-vr-interface-demo
