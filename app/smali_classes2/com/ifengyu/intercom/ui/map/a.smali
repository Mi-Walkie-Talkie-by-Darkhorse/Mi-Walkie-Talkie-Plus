.class public Lcom/ifengyu/intercom/ui/map/a;
.super Ljava/lang/Object;
.source "GaoDeMapOperate.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;
.implements Lcom/ifengyu/intercom/ui/map/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/TextureMapView;

.field private c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

.field private d:Lcom/amap/api/maps/AMap;

.field private e:Lcom/amap/api/maps/UiSettings;

.field private f:Lcom/amap/api/maps/model/MyLocationStyle;

.field private g:Z

.field private h:Z

.field private i:Lcom/ifengyu/intercom/ui/map/c/a/d;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/ui/map/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/amap/api/maps/model/Marker;

.field private o:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->j:Ljava/util/Map;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/a$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/a$2;-><init>(Lcom/ifengyu/intercom/ui/map/a;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->o:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/a;)Lcom/amap/api/maps/AMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method

.method private q()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mitalki/map/style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map_style.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setCustomMapStylePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMapType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->q()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    const v1, 0x7f020104

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->p()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setLoadOfflineData(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/w;->m(Z)V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 8

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->q()V

    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    const v1, 0x7f020104

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/maps/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v6}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeWidth(F)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMaxZoomLevel(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/ifengyu/intercom/ui/map/a$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/a$1;-><init>(Lcom/ifengyu/intercom/ui/map/a;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/UiSettings;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v2, Lcom/ifengyu/intercom/ui/map/c/a/e;

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/e;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/ifengyu/intercom/ui/map/c/a/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/map/c/a/d;-><init>(Lcom/amap/api/maps/AMap;Ljava/util/List;ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Lcom/ifengyu/intercom/ui/map/c/a/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/b;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/TextureMapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/amap/api/maps/model/Marker;Lcom/ifengyu/intercom/ui/map/c/a/a;)V
    .locals 9

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/c/a/a;->a()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/c/a/a;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/e;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/a/e;->c()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    const v1, 0x7f0400be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1002c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/ifengyu/intercom/ui/map/a$a;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/ifengyu/intercom/ui/map/a$a;-><init>(Lcom/ifengyu/intercom/ui/map/a;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    div-float/2addr v0, v8

    mul-float/2addr v0, v7

    :cond_1
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v4}, Lcom/amap/api/maps/TextureMapView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    div-float/2addr v2, v7

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    sub-float v2, v4, v2

    float-to-int v2, v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v4}, Lcom/amap/api/maps/TextureMapView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    add-float/2addr v0, v4

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual {v3, v1, v2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 7

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/c/a/e;

    invoke-direct {v0, v1, p1}, Lcom/ifengyu/intercom/ui/map/c/a/e;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/c;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-wide v4, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget v2, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/b;)V
    .locals 12

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->b:Lorg/greenrobot/greendao/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/greenrobot/greendao/f;

    const/4 v2, 0x0

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->g:Lorg/greenrobot/greendao/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/greendao/bean/c;

    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v8, v1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v1, 0x7f02012c

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v5, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/amap/api/maps/model/LatLng;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00a5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0f00a4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 8

    const/4 v6, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    aget-wide v4, v0, v6

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/util/ArrayList;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;Z)V"
        }
    .end annotation

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v1, 0x7f02012c

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v6, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v4, v2, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v6, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v0, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/amap/api/maps/model/LatLng;

    aput-object v3, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-static {v10}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v2

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    iget-wide v6, v0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/TextureMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onDestroy()V

    return-void
.end method

.method public d()V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    new-instance v2, Lcom/ifengyu/intercom/ui/map/c/a/e;

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/e;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->c()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b()V

    return-void
.end method

.method public f()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->n:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_1
    return-void
.end method

.method public h()Lcom/ifengyu/intercom/bean/MapCurrentStatus;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/MapCurrentStatus;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    iget v2, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    float-to-int v2, v2

    iput v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    iget-object v2, v1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iput-wide v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-object v1, v1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iput-wide v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    return-object v0
.end method

.method public i()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->q()V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    return-void
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMapType()I

    move-result v0

    return v0
.end method

.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "locationType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->g:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/b/w;->a(DDI)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/b/w;->a(DD)V

    goto :goto_1

    :cond_3
    const-string v0, "amap"

    const-string v1, " bundle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "amap"

    const-string v1, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
