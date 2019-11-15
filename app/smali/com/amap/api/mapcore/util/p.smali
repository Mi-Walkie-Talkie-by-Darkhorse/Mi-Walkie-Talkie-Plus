.class public Lcom/amap/api/mapcore/util/p;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMapFragmentDelegate;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field public b:I

.field private c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/api/maps/AMapOptions;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore/util/p;->b:I

    iput v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    const-string v0, "MapFragmentDelegateImp"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->e:Ljava/lang/String;

    rem-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/amap/api/maps/AMapOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCamera()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getAMapUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getRotateGesturesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScrollGesturesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getTiltGesturesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomControlsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZoomGesturesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getCompassEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setCompassEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getScaleControlsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setLogoPosition(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMapType(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMapOptions;->getZOrderOnTop()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setZOrderOnTop(Z)V

    :cond_1
    return-void
.end method

.method public getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->e:Ljava/lang/String;

    const-string v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    if-nez v0, :cond_8

    new-instance v0, Lcom/amap/api/mapcore/util/c;

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    goto :goto_0

    :cond_2
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_3

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    :cond_3
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_4

    const v0, 0x3f5eb852    # 0.87f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    :cond_4
    const/16 v1, 0x140

    if-gt v0, v1, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    :cond_5
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_6

    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    :cond_6
    const/16 v1, 0x280

    if-gt v0, v1, :cond_7

    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    :cond_7
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/amap/api/mapcore/util/g;->a:F

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/amap/api/mapcore/util/p;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/amap/api/mapcore/util/d;

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/amap/api/mapcore/util/b;

    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->a()Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    goto :goto_2
.end method

.method public isReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/p;->setContext(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/p;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    iget v1, p0, Lcom/amap/api/mapcore/util/p;->b:I

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setVisibilityEx(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "MapOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/amap/api/maps/AMapOptions;->CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/p;->a(Lcom/amap/api/maps/AMapOptions;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Lcom/amap/api/maps/AMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/p;->setContext(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    return-void
.end method

.method public onLowMemory()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "onLowMemory"

    const-string v1, "onLowMemory run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onActivityResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/p;->getMap()Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMapOptions;->camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/maps/AMapOptions;->writeToParcel(Landroid/os/Parcel;I)V

    const-string v1, "MapOptions"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/amap/api/mapcore/util/p;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setOptions(Lcom/amap/api/maps/AMapOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/p;->f:Lcom/amap/api/maps/AMapOptions;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iput p1, p0, Lcom/amap/api/mapcore/util/p;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/p;->c:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setVisibilityEx(I)V

    :cond_0
    return-void
.end method
