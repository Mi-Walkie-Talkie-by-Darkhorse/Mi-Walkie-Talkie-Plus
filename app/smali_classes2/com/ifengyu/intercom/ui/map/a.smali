.class public Lcom/ifengyu/intercom/ui/map/a;
.super Ljava/lang/Object;
.source "GaoDeMapOperate.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;
.implements Lcom/ifengyu/intercom/ui/map/e/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/map/a$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/TextureMapView;

.field private c:Lcom/amap/api/maps/AMap;

.field private d:Lcom/amap/api/maps/UiSettings;

.field private e:Lcom/amap/api/maps/model/MyLocationStyle;

.field private f:Z

.field private g:Z

.field private h:Lcom/ifengyu/intercom/ui/map/e/a/d;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/map/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/amap/api/maps/model/Marker;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/TextureMapView;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Z

    .line 3
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance p3, Lcom/ifengyu/intercom/ui/map/a$b;

    invoke-direct {p3, p0}, Lcom/ifengyu/intercom/ui/map/a$b;-><init>(Lcom/ifengyu/intercom/ui/map/a;)V

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/a;)Lcom/amap/api/maps/AMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/a;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private p()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/map/style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "map_style.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setCustomMapStylePath(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMapType()I

    move-result v0

    return v0
.end method

.method public a(IZ)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->p()V

    .line 5
    :cond_0
    new-instance p1, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {p1}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v0, 0x5

    .line 6
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const v0, 0x7f08010c

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v0}, Lcom/amap/api/maps/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeWidth(F)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->setMaxZoomLevel(F)V

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {p1, p0}, Lcom/amap/api/maps/AMap;->setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V

    if-eqz p2, :cond_1

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance p2, Lcom/ifengyu/intercom/ui/map/a$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/map/a$a;-><init>(Lcom/ifengyu/intercom/ui/map/a;)V

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->d:Lcom/amap/api/maps/UiSettings;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Ljava/util/ArrayList;

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c()Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    .line 21
    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 22
    new-instance v0, Lcom/ifengyu/intercom/ui/map/e/a/e;

    invoke-direct {v0, v6, p2}, Lcom/ifengyu/intercom/ui/map/e/a/e;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 23
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    new-instance p1, Lcom/ifengyu/intercom/ui/map/e/a/d;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Ljava/util/ArrayList;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/e/a/d;-><init>(Lcom/amap/api/maps/AMap;Ljava/util/List;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Lcom/ifengyu/intercom/ui/map/e/a/d;

    .line 25
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/ui/map/e/a/d;->a(Lcom/ifengyu/intercom/ui/map/e/a/b;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/TextureMapView;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/amap/api/maps/model/Marker;Lcom/ifengyu/intercom/ui/map/e/a/a;)V
    .locals 8

    .line 84
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/e/a/a;->a()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 85
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/e/a/a;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->j:Ljava/util/List;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->j:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/map/e/a/e;

    .line 88
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/e/a/e;->b()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 89
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    const v0, 0x7f0c00c1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09019b

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 92
    new-instance v1, Lcom/ifengyu/intercom/ui/map/a$c;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->j:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/ifengyu/intercom/ui/map/a$c;-><init>(Lcom/ifengyu/intercom/ui/map/a;Ljava/util/List;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 96
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 97
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_1

    div-float/2addr v1, v3

    mul-float v1, v1, v5

    .line 98
    :cond_1
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v2, p1, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 99
    invoke-virtual {v2, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 100
    invoke-virtual {v2, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 101
    invoke-virtual {v2, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 102
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v5

    div-float/2addr v0, v5

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual {v2, p1, p2, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 7

    .line 27
    new-instance v6, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLatitudeDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/BeanUserLocation;->getLongitudeDouble()D

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 28
    new-instance v0, Lcom/ifengyu/intercom/ui/map/e/a/e;

    invoke-direct {v0, v6, p1}, Lcom/ifengyu/intercom/ui/map/e/a/e;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 29
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/map/e/a/d;->a(Lcom/ifengyu/intercom/ui/map/e/a/c;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/bean/MapCurrentStatus;)V
    .locals 8

    .line 79
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    iget-wide v4, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget p1, p1, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    int-to-float p1, p1

    invoke-static {v7, p1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/greendao/bean/b;)V
    .locals 12

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    .line 32
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    .line 33
    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/b;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v2, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->CurrentTime:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 37
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/intercom/greendao/bean/c;

    .line 38
    new-instance v5, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/c;->g()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v10, v8

    invoke-direct {v5, v6, v7, v10, v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 43
    new-instance p1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v3, 0x7f080142

    invoke-static {v3}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1, v3, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    .line 46
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v3, p1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Lcom/amap/api/maps/model/Marker;

    .line 47
    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    .line 48
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    :cond_3
    const/4 p1, 0x0

    .line 49
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    const/high16 v4, 0x40800000    # 4.0f

    if-ge p1, v3, :cond_5

    .line 50
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 51
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps/model/LatLng;

    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    .line 53
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance v7, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v7}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [Lcom/amap/api/maps/model/LatLng;

    aput-object v5, v8, v1

    aput-object v3, v8, v0

    invoke-virtual {v7, v8}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06018e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 55
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 56
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-static {v4}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f06018d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 80
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/map/a;->g:Z

    if-eqz p1, :cond_0

    .line 81
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

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

.method public a(ZLjava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/bean/LocationBean;",
            ">;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 59
    new-instance p1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v2, 0x7f080142

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    .line 60
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v3, v3, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v5, v5, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    .line 62
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2, p1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Lcom/amap/api/maps/model/Marker;

    .line 63
    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    .line 64
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 65
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x2

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 68
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v3, v3, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v5, p1, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 69
    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v3, v3, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/LocationBean;

    iget-wide v5, p2, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {p1, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 70
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance v3, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    new-array p3, p3, [Lcom/amap/api/maps/model/LatLng;

    aput-object v2, p3, v1

    aput-object p1, p3, v0

    invoke-virtual {v3, p3}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    invoke-virtual {p3, v1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object p2

    .line 71
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance p3, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {p3}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {p3, p1}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p1

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p1

    iget-object p3, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06018d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/LocationBean;

    .line 76
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/model/Polyline;

    .line 77
    invoke-virtual {p2}, Lcom/amap/api/maps/model/Polyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p3

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v1, p1, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    iget-wide v3, p1, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p3, v0}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    .line 78
    invoke-virtual {p2}, Lcom/amap/api/maps/model/Polyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/TextureMapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public c()Lcom/ifengyu/intercom/bean/MapCurrentStatus;
    .locals 4

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/MapCurrentStatus;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    .line 4
    iget v2, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    float-to-int v2, v2

    iput v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentZoomLevel:I

    .line 5
    iget-object v1, v1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iput-wide v2, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLatitude:D

    .line 6
    iget-wide v1, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iput-wide v1, v0, Lcom/ifengyu/intercom/bean/MapCurrentStatus;->currentCenterLongitude:D

    return-object v0
.end method

.method public d()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/e/a/d;->b()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onDestroy()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->b:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMapType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->p()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    const v2, 0x7f08010c

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->e:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->q()V

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setLoadOfflineData(Z)V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/ifengyu/intercom/i/d0;->b(Z)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/ui/service/ShareLocationService;->c()Ljava/util/List;

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
    new-instance v2, Lcom/ifengyu/intercom/ui/map/e/a/e;

    invoke-direct {v2, v8, v1}, Lcom/ifengyu/intercom/ui/map/e/a/e;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/e/a/d;->a()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->h:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/e/a/d;->c()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->l:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/a;->p()V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

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
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->f:Z

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

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

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/a;->g:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/a;->c:Lcom/amap/api/maps/AMap;

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

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-int p1, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ifengyu/intercom/i/d0;->a(DDI)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ifengyu/intercom/i/d0;->a(DD)V

    goto :goto_1

    :cond_3
    const-string p1, " bundle is null"

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p1, "\u5b9a\u4f4d\u5931\u8d25"

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
