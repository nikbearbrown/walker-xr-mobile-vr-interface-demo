# Open questions log — walker-xr-mobile-vr-interface-demo

Gate — unsigned at time of writing. Written by `/gdd reverse --path godot silent`, 2026-09-27. Every `[MISSING]` in `GDD.md` is an entry here.

Format: THE QUESTION / THE STAKES / DECISION DEADLINE / OPTIONS / OWNER / STATUS. Status is Open, In Discussion, or Decided.

| # | Question | Stakes | Deadline | Options | Owner | Status |
|---|---|---|---|---|---|---|
| Q-01 | What is this demo for in Walker? | No definition of done; Ghost Center stays permanent | before further work or film | (a) film source only; (b) mobile-VR starter for a Walker XR project; (c) course example | Nik Bear Brown | Open |
| Q-02 | Who is the audience, and what should they see? | Replaces PX goals; decides whether the film is desktop stereo or phone | with Q-01 | developer / student / reference copy only | Nik Bear Brown | Open |
| Q-03 | Stay a demo, or seed an XR game? | A game needs a person-written Vision layer (`/gdd v1`) | with Q-01 | demo / game / undecided | Nik Bear Brown | Open |
| Q-04 | `run/main_scene.mobile` points at `main_mobile.tscn`, which does not exist. What should mobile launch? | The demo cannot launch on the platform it is named for (R-01); VERIFICATION.md forbids a silent substitute | before any mobile deployment | (a) obtain the upstream scene if it exists elsewhere; (b) decide mobile uses `main.tscn` and change the setting in a documented Walker change; (c) declare the project desktop-only | Nik Bear Brown | Open |
| Q-05 | What counts as device validation for 3DOF tracking? | Head tracking is the mobile feature; nothing verifies it | after Q-04 | named phone + viewer + H-01 session; skip mobile | Nik Bear Brown | Open |
| Q-06 | Definition of done for the two pending native-4K Liam films | Blocked on the shared recording-window blocker; not review-ready | when the blocker clears | desktop stereo capture only; desktop + phone | Nik Bear Brown | Open |
| Q-07 | Which renderer should the demo and films use, given Compatibility does not support lens distortion and the feature tag says "Forward Plus"? | A phone-in-viewer image without distortion is wrong (R-03); the config is internally inconsistent | before the films | keep Compatibility and say so; switch renderer in a documented Walker change | Nik Bear Brown | Open |
| Q-08 | Should the desktop test output be kept as a log file like the other demos? | Results live only in prose (R-04) | next test run | save `test_desktop` output to a dated log | Nik Bear Brown | Open |
| Q-09 | CORE is 2/7 = 29% | Under the 40% limit; no action needed | none | accept | Nik Bear Brown | Open (recorded for completeness) |
