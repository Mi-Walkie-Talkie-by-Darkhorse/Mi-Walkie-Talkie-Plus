.class public Lcom/ifengyu/intercom/ui/c/e;
.super Ljava/lang/Object;
.source "GaoDeMapOperate.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;
.implements Lcom/ifengyu/intercom/ui/c/g/b;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/amap/api/maps/MapView;

.field private c:Lcom/amap/api/maps/AMap;

.field private d:Lcom/amap/api/maps/UiSettings;

.field private e:Lcom/amap/api/maps/model/MyLocationStyle;

.field private f:Z

.field private g:Lcom/ifengyu/intercom/ui/c/g/d;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/c/g/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amap/api/maps/MapView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/e;->f:Z

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/e;->a:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    return-void
.end method

.method private synthetic f()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->r()[D

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const/4 v2, 0x1

    aget-wide v5, v0, v2

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v8, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method private synthetic h(Ljava/lang/Long;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->l()Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    .line 4
    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/ui/c/g/c;

    invoke-direct {v2, v8, v1}, Lcom/ifengyu/intercom/ui/c/g/c;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private synthetic j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ifengyu/intercom/ui/c/g/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->h:Ljava/util/ArrayList;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/c/g/d;-><init>(Lcom/amap/api/maps/AMap;Ljava/util/List;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/e;->g:Lcom/ifengyu/intercom/ui/c/g/d;

    .line 2
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/ui/c/g/d;->q(Lcom/ifengyu/intercom/ui/c/g/b;)V

    return-void
.end method

.method private synthetic l(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/c/e;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 3
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private v()V
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const v1, 0x7f080154

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeWidth(F)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->m()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/e;->x()V

    :cond_1
    return-void
.end method

.method private x()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/AMap/style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "style.data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "style_extra.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->d:Lcom/amap/api/maps/UiSettings;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->d:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->d:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->d:Lcom/amap/api/maps/UiSettings;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->d:Lcom/amap/api/maps/UiSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->d:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/c/g/c;

    invoke-direct {v0, v6, p1}, Lcom/ifengyu/intercom/ui/c/g/c;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/e;->g:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/c/g/d;->f(Lcom/ifengyu/intercom/ui/c/g/c;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMapType()I

    move-result v0

    return v0
.end method

.method public c()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    const/high16 v1, 0x41900000    # 18.0f

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMaxZoomLevel(F)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/e;->w()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/e;->v()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/e;->y()V

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    new-instance v0, Lcom/ifengyu/intercom/ui/c/d;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/c/d;-><init>(Lcom/ifengyu/intercom/ui/c/e;)V

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/e;->h:Ljava/util/ArrayList;

    const-wide/16 v0, 0x3e8

    .line 8
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/c/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/c/a;-><init>(Lcom/ifengyu/intercom/ui/c/e;)V

    .line 10
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/c/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/c/b;-><init>(Lcom/ifengyu/intercom/ui/c/e;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/c/e$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/c/e$a;-><init>(Lcom/ifengyu/intercom/ui/c/e;)V

    .line 11
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/e;->f()V

    return-void
.end method

.method public synthetic i(Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/e;->h(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/c/e;->j(Ljava/util/List;)V

    return-void
.end method

.method public synthetic m(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ifengyu/intercom/ui/c/e;->l(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public n(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->r()[D

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    const/4 v1, 0x1

    aget-wide v4, p1, v1

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v7}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 8

    const-string v0, "amap"

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "errorCode"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "locationType"

    .line 3
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/e;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/c/e;->f:Z

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v7, v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v7}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ifengyu/intercom/p/d0;->l0(DDI)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/p/d0;->k0(DD)V

    goto :goto_1

    :cond_3
    const-string p1, " bundle is null"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p1, "\u5b9a\u4f4d\u5931\u8d25"

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->g:Lcom/ifengyu/intercom/ui/c/g/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const v1, 0x7f080154

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setLoadOfflineData(Z)V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->g0(Z)V

    :cond_0
    return-void
.end method

.method public s(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public s1(Lcom/amap/api/maps/model/Marker;Lcom/ifengyu/intercom/ui/c/g/a;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/c/g/a;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/c/g/a;->c()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 5
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 6
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/c/e;->a:Landroid/app/Activity;

    const v1, 0x7f0c0102

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0901e1

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 9
    new-instance v2, Lcom/ifengyu/intercom/ui/c/f/a;

    invoke-direct {v2, p1}, Lcom/ifengyu/intercom/ui/c/f/a;-><init>(Ljava/util/List;)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    new-instance v2, Lcom/ifengyu/intercom/ui/c/c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/c/c;-><init>(Lcom/ifengyu/intercom/ui/c/e;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    invoke-static {}, Lcom/ifengyu/library/utils/s;->l()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 13
    invoke-static {}, Lcom/ifengyu/library/utils/s;->l()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne p1, v4, :cond_1

    div-float/2addr v2, v3

    mul-float v2, v2, v5

    .line 15
    :cond_1
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p1, p2, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 19
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->b:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public t()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/service/ShareLocationService;->l()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    .line 4
    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/ui/c/g/c;

    invoke-direct {v2, v8, v1}, Lcom/ifengyu/intercom/ui/c/g/c;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->g:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->i()V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->g:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->p()V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/e;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/c/e;->x()V

    return-void
.end method
