# Verification limits

Godot4.7.2 headless import/startup pass. test_desktop.gd explicitly observes
Native mobile interface initialization and viewport.use_xr, then sends four
arrow-key holds and measures expected X/Z origin translation. These are state
checks, not stereo pixel, lens, head-tracking or device-comfort verification.

Mobile preflight: project.godot selects res://main_mobile.tscn on mobile,
but that file is absent in both source inventory and adaptation. The existing
main.tscn has an XROrigin3D/XRCamera3D, geometry and shared initialization
script; that alone does not establish intended mobile scene configuration.
No speculative replacement, SDK install, device deployment or account changes.

Desktop stereo recording awaits the existing shared recording-window blocker.
Mobile launch and3DOF tracking additionally need a valid mobile scene and
device testing. Compatibility lens distortion is unsupported per source README.
Both native4K Liam films remain pending, not review-ready. May inspect the next
feasible source while these dependencies remain unresolved; do not retire this.
