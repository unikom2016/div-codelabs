# Android Fragment
- Flexible UI
- One Activity -> Many Fragments (meng-handle semua layout, naruh widget)
- Fragment always depend on the Activity

## Lifecycle
- (Activity) onAttachFragment() -> tidak mengakses elemen UI, ada Background Thread, untuk manggil UI-nya
- (Fragment) onCreate()
- (Fragment) onCreateView() -> Fragment dibuat
- (Fragment) onActivityCreated() -> Mengakses UI

## Used
- ViewPager / TabView
- You must wrapped the Fragment with FrameLayout (convention)