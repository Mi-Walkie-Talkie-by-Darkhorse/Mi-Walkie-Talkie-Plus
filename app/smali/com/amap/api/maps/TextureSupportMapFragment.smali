.class public Lcom/amap/api/maps/TextureSupportMapFragment;
.super Landroidx/fragment/app/Fragment;


# instance fields
.field private a:Lcom/amap/api/maps/AMap;

.field private b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/TextureSupportMapFragment;->getMapFragmentDelegate(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/amap/api/maps/TextureSupportMapFragment;
    .locals 1

    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    invoke-static {v0}, Lcom/amap/api/maps/TextureSupportMapFragment;->newInstance(Lcom/amap/api/maps/AMapOptions;)Lcom/amap/api/maps/TextureSupportMapFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/amap/api/maps/AMapOptions;)Lcom/amap/api/maps/TextureSupportMapFragment;
    .locals 4

    new-instance v0, Lcom/amap/api/maps/TextureSupportMapFragment;

    invoke-direct {v0}, Lcom/amap/api/maps/TextureSupportMapFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/amap/api/maps/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string p0, "MapOptions"

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/TextureSupportMapFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->a:Lcom/amap/api/maps/AMap;

    if-nez v1, :cond_2

    new-instance v1, Lcom/amap/api/maps/AMap;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/AMap;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v1, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->a:Lcom/amap/api/maps/AMap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->a:Lcom/amap/api/maps/AMap;

    return-object v0

    :catchall_0
    return-object v1
.end method

.method protected getMapFragmentDelegate(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    .locals 8

    iget-object v0, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v2

    const-string v3, "com.amap.api.wrapper.MapFragmentDelegateWrapper"

    const-class v4, Lcom/amap/api/col/l3/y;

    new-array v5, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    move-object v1, p1

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3/hl;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    iput-object v1, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    iget-object v1, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3/y;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/y;-><init>(I)V

    iput-object v1, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    invoke-interface {v1, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->b:Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    return-object p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps/TextureSupportMapFragment;->a:Lcom/amap/api/maps/AMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onDestroyView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/TextureSupportMapFragment;->getMapFragmentDelegate(Landroid/content/Context;)Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object p2

    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    invoke-interface {p2, p1, v0, p3}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onInflate(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/maps/TextureSupportMapFragment;->a()Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;

    move-result-object p1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;->setVisibility(I)V

    return-void
.end method
