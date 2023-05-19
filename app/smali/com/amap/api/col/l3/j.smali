.class public final Lcom/amap/api/col/l3/j;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/dk$a;
.implements Lcom/amap/api/col/l3/u;
.implements Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/j$b;,
        Lcom/amap/api/col/l3/j$c;,
        Lcom/amap/api/col/l3/j$d;,
        Lcom/amap/api/col/l3/j$a;
    }
.end annotation


# instance fields
.field private A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field private B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

.field private E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private F:Lcom/amap/api/col/l3/n;

.field private G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

.field private H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

.field private I:Lcom/amap/api/maps/model/AMapGestureListener;

.field private J:Lcom/amap/api/col/l3/ao;

.field private K:Lcom/amap/api/col/l3/dc;

.field private L:Lcom/amap/api/maps/UiSettings;

.field private M:Lcom/amap/api/col/l3/w;

.field private final N:Lcom/amap/api/col/l3/af;

.field private O:Z

.field private final P:Lcom/amap/api/col/l3/v;

.field private Q:Lcom/amap/api/col/l3/ey;

.field private final R:Lcom/amap/api/col/l3/ae;

.field private final S:Lcom/amap/api/col/l3/r;

.field private T:Z

.field private U:I

.field private V:Z

.field private W:I

.field private X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

.field private Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

.field private Z:Z

.field protected a:Z

.field private aA:Lcom/amap/api/col/l3/dk;

.field private aB:Lcom/autonavi/ae/gmap/GLMapRender;

.field private aC:Lcom/amap/api/col/l3/q;

.field private aD:Z

.field private aE:F

.field private aF:F

.field private aG:Z

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:I

.field private aL:Ljavax/microedition/khronos/opengles/GL10;

.field private volatile aM:Z

.field private volatile aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Ljava/util/concurrent/locks/Lock;

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:Lcom/amap/api/col/l3/j$b;

.field private aW:Lcom/amap/api/col/l3/dg;

.field private aX:Lcom/amap/api/col/l3/s;

.field private aY:Lcom/amap/api/col/l3/at;

.field private aZ:Lcom/amap/api/col/l3/j$a;

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/amap/api/col/l3/cy;

.field private ad:Lcom/amap/api/maps/LocationSource;

.field private ae:Z

.field private af:Lcom/amap/api/maps/model/Marker;

.field private ag:Lcom/amap/api/col/l3/cp;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:Landroid/graphics/Rect;

.field private ao:I

.field private ap:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private aq:Ljava/lang/Thread;

.field private ar:Z

.field private as:Z

.field private at:I

.field private au:Lcom/amap/api/maps/CustomRenderer;

.field private final av:Lcom/amap/api/col/l3/aa;

.field private aw:I

.field private ax:I

.field private ay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3/ab;",
            ">;"
        }
    .end annotation
.end field

.field private az:Lcom/amap/api/col/l3/di;

.field protected final b:Lcom/amap/api/col/l3/z;

.field private ba:Lcom/amap/api/col/l3/j$a;

.field private bb:Lcom/amap/api/col/l3/j$a;

.field private bc:Lcom/amap/api/col/l3/j$a;

.field private bd:Lcom/amap/api/col/l3/j$a;

.field private be:Lcom/amap/api/col/l3/j$a;

.field private bf:Lcom/amap/api/col/l3/j$a;

.field private bg:Lcom/amap/api/col/l3/j$a;

.field private bh:Lcom/amap/api/col/l3/j$a;

.field private bi:Lcom/amap/api/col/l3/j$a;

.field private bj:Lcom/amap/api/col/l3/j$a;

.field private bk:Lcom/amap/api/col/l3/j$a;

.field private bl:Ljava/lang/Runnable;

.field private bm:Lcom/amap/api/col/l3/j$a;

.field private bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field private bo:Lcom/amap/api/col/l3/am;

.field private bp:[Lcom/autonavi/amap/mapcore/IPoint;

.field protected c:Lcom/autonavi/amap/mapcore/MapConfig;

.field protected d:Lcom/amap/api/col/l3/am;

.field protected e:Landroid/content/Context;

.field protected f:Lcom/autonavi/ae/gmap/GLMapEngine;

.field public g:I

.field public h:I

.field protected final i:Landroid/os/Handler;

.field j:Landroid/graphics/Point;

.field k:Landroid/graphics/Rect;

.field protected l:Ljava/lang/String;

.field m:[F

.field n:[F

.field o:[F

.field p:[F

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:I

.field private t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

.field private u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

.field private v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

.field private w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

.field private x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

.field private y:Lcom/amap/api/maps/AMap$OnMapClickListener;

.field private z:Lcom/amap/api/maps/AMap$OnMapTouchListener;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/v;Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    .line 3
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->K:Lcom/amap/api/col/l3/dc;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->a:Z

    .line 6
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->O:Z

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/amap/api/col/l3/j;->T:Z

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->V:Z

    .line 9
    iput v1, p0, Lcom/amap/api/col/l3/j;->W:I

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->Z:Z

    .line 11
    new-instance v3, Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-direct {v3, v2}, Lcom/autonavi/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aa:Z

    .line 13
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ab:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ae:Z

    .line 15
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    .line 16
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ah:Z

    .line 18
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ai:Z

    .line 19
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aj:Z

    .line 20
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ak:Z

    .line 21
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->al:Z

    .line 22
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->am:Z

    .line 23
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/l3/j;->an:Landroid/graphics/Rect;

    .line 24
    iput v2, p0, Lcom/amap/api/col/l3/j;->ao:I

    .line 25
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 26
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ar:Z

    .line 27
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->as:Z

    .line 28
    iput v1, p0, Lcom/amap/api/col/l3/j;->at:I

    const/4 v3, -0x1

    .line 29
    iput v3, p0, Lcom/amap/api/col/l3/j;->aw:I

    .line 30
    iput v3, p0, Lcom/amap/api/col/l3/j;->ax:I

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    .line 32
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aD:Z

    const/4 v4, 0x0

    .line 33
    iput v4, p0, Lcom/amap/api/col/l3/j;->aE:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    iput v4, p0, Lcom/amap/api/col/l3/j;->aF:F

    .line 35
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aG:Z

    .line 36
    iput-boolean v2, p0, Lcom/amap/api/col/l3/j;->aH:Z

    .line 37
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aI:Z

    .line 38
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aJ:Z

    .line 39
    iput v1, p0, Lcom/amap/api/col/l3/j;->aK:I

    .line 40
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aL:Ljavax/microedition/khronos/opengles/GL10;

    .line 41
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    .line 42
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aN:Z

    .line 43
    iput-boolean v2, p0, Lcom/amap/api/col/l3/j;->aO:Z

    .line 44
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aP:Z

    .line 45
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aQ:Z

    .line 46
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->aR:Ljava/util/concurrent/locks/Lock;

    .line 47
    iput v1, p0, Lcom/amap/api/col/l3/j;->aS:I

    .line 48
    new-instance v2, Lcom/amap/api/col/l3/j$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/amap/api/col/l3/j$1;-><init>(Lcom/amap/api/col/l3/j;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    .line 49
    new-instance v2, Lcom/amap/api/col/l3/j$11;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$11;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->aZ:Lcom/amap/api/col/l3/j$a;

    .line 50
    new-instance v2, Lcom/amap/api/col/l3/j$18;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$18;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->ba:Lcom/amap/api/col/l3/j$a;

    .line 51
    new-instance v2, Lcom/amap/api/col/l3/j$27;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$27;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bb:Lcom/amap/api/col/l3/j$a;

    .line 52
    new-instance v2, Lcom/amap/api/col/l3/j$34;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$34;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bc:Lcom/amap/api/col/l3/j$a;

    .line 53
    new-instance v2, Lcom/amap/api/col/l3/j$42;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$42;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bd:Lcom/amap/api/col/l3/j$a;

    .line 54
    new-instance v2, Lcom/amap/api/col/l3/j$43;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$43;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->be:Lcom/amap/api/col/l3/j$a;

    .line 55
    new-instance v2, Lcom/amap/api/col/l3/j$44;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$44;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bf:Lcom/amap/api/col/l3/j$a;

    .line 56
    new-instance v2, Lcom/amap/api/col/l3/j$45;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$45;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bg:Lcom/amap/api/col/l3/j$a;

    .line 57
    new-instance v2, Lcom/amap/api/col/l3/j$2;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$2;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bh:Lcom/amap/api/col/l3/j$a;

    .line 58
    new-instance v2, Lcom/amap/api/col/l3/j$3;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$3;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bi:Lcom/amap/api/col/l3/j$a;

    .line 59
    new-instance v2, Lcom/amap/api/col/l3/j$4;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$4;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bj:Lcom/amap/api/col/l3/j$a;

    .line 60
    new-instance v2, Lcom/amap/api/col/l3/j$5;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$5;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bk:Lcom/amap/api/col/l3/j$a;

    .line 61
    new-instance v2, Lcom/amap/api/col/l3/j$6;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$6;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bl:Ljava/lang/Runnable;

    .line 62
    new-instance v2, Lcom/amap/api/col/l3/j$7;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$7;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bm:Lcom/amap/api/col/l3/j$a;

    .line 63
    new-instance v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v2}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    .line 64
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->j:Landroid/graphics/Point;

    .line 65
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->k:Landroid/graphics/Rect;

    .line 66
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->l:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->bo:Lcom/amap/api/col/l3/am;

    const/16 v2, 0x10

    new-array v4, v2, [F

    .line 68
    iput-object v4, p0, Lcom/amap/api/col/l3/j;->m:[F

    new-array v4, v2, [F

    .line 69
    iput-object v4, p0, Lcom/amap/api/col/l3/j;->n:[F

    new-array v2, v2, [F

    .line 70
    iput-object v2, p0, Lcom/amap/api/col/l3/j;->o:[F

    .line 71
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->bp:[Lcom/autonavi/amap/mapcore/IPoint;

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 72
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->p:[F

    const-string v0, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    .line 73
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->q:Ljava/lang/String;

    const-string v0, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(1.0,0,0,1.0);\n}"

    .line 74
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->r:Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/amap/api/col/l3/j;->s:I

    .line 76
    iput-object p2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    .line 77
    invoke-static {p2}, Lcom/autonavi/amap/mapcore/AEUtil;->init(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/amap/api/col/l3/ee;->a()Lcom/amap/api/col/l3/ee;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3/ee;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {p2}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/p;->b:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/dr;->a(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/amap/api/col/l3/q;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/q;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aC:Lcom/amap/api/col/l3/q;

    .line 82
    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;-><init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    .line 83
    new-instance v0, Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/GLMapRender;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    .line 84
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    .line 85
    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/v;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/amap/api/col/l3/j;->g:I

    iget v3, p0, Lcom/amap/api/col/l3/j;->h:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v11, p0, Lcom/amap/api/col/l3/j;->g:I

    iget v12, p0, Lcom/amap/api/col/l3/j;->h:I

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->isEngineCreated(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3, v2, v0, v11, v12}, Lcom/autonavi/ae/gmap/GLMapEngine;->createEngineWithFrame(ILandroid/graphics/Rect;II)V

    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    invoke-direct {v0, v2, p0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3, v2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setOvelayBundle(ILcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;)V

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/j$29;

    invoke-direct {v0, p0, v2}, Lcom/amap/api/col/l3/j$29;-><init>(Lcom/amap/api/col/l3/j;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/j;->r(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapAngle(IF)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapZoom(IF)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapCenter(III)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setCameraDegree(IF)V

    goto :goto_0

    :cond_1
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    new-instance v0, Lcom/amap/api/col/l3/j$30;

    move-object v4, v0

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v4 .. v12}, Lcom/amap/api/col/l3/j$30;-><init>(Lcom/amap/api/col/l3/j;IIIIIII)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/amap/api/col/l3/j;->U:I

    .line 87
    new-instance v0, Lcom/amap/api/col/l3/af;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/af;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    .line 88
    new-instance v0, Lcom/amap/api/col/l3/ey;

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/l3/ey;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    .line 89
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->e()Lcom/amap/api/col/l3/ew;

    move-result-object v0

    new-instance v2, Lcom/amap/api/col/l3/j$c;

    invoke-direct {v2, p0, v1}, Lcom/amap/api/col/l3/j$c;-><init>(Lcom/amap/api/col/l3/j;B)V

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3/ew;->a(Lcom/amap/api/col/l3/ew$a;)V

    .line 90
    new-instance v0, Lcom/amap/api/col/l3/j$b;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/j$b;-><init>(Lcom/amap/api/col/l3/j;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aV:Lcom/amap/api/col/l3/j$b;

    .line 91
    new-instance v0, Lcom/amap/api/col/l3/r;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/r;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    .line 92
    new-instance v0, Lcom/amap/api/col/l3/ae;

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/amap/api/col/l3/ae;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    .line 93
    new-instance v0, Lcom/amap/api/col/l3/z;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/z;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    .line 94
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapCoreListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    .line 95
    invoke-interface {p1, v1}, Lcom/amap/api/col/l3/v;->setRenderMode(I)V

    .line 96
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aG:Z

    .line 97
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 98
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;)V

    .line 99
    new-instance p1, Lcom/amap/api/col/l3/ac;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/ac;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->M:Lcom/amap/api/col/l3/w;

    .line 100
    new-instance p1, Lcom/amap/api/col/l3/n;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/n;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->F:Lcom/amap/api/col/l3/n;

    .line 101
    new-instance p1, Lcom/amap/api/col/l3/dc;

    invoke-direct {p1, p0, p2}, Lcom/amap/api/col/l3/dc;-><init>(Lcom/amap/api/col/l3/u;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->K:Lcom/amap/api/col/l3/dc;

    .line 102
    new-instance p1, Lcom/amap/api/col/l3/ao;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/ao;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    .line 103
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/ao;->a(Lcom/amap/api/col/l3/an;)V

    .line 104
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->K:Lcom/amap/api/col/l3/dc;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/ao;->b(Lcom/amap/api/col/l3/an;)V

    .line 105
    new-instance p1, Lcom/amap/api/col/l3/aa;

    invoke-direct {p1}, Lcom/amap/api/col/l3/aa;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->av:Lcom/amap/api/col/l3/aa;

    .line 106
    new-instance p1, Lcom/amap/api/col/l3/o;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/amap/api/col/l3/o;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->aq:Ljava/lang/Thread;

    .line 107
    new-instance p1, Lcom/amap/api/col/l3/ap;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/ap;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    .line 108
    new-instance p1, Lcom/amap/api/col/l3/at;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/at;-><init>(Lcom/amap/api/col/l3/u;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    .line 109
    new-instance p1, Lcom/amap/api/col/l3/dg;

    invoke-direct {p1}, Lcom/amap/api/col/l3/dg;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->aW:Lcom/amap/api/col/l3/dg;

    .line 110
    new-instance p1, Lcom/amap/api/col/l3/s;

    invoke-direct {p1}, Lcom/amap/api/col/l3/s;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    .line 111
    new-instance p1, Lcom/amap/api/col/l3/di;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/amap/api/col/l3/di;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/u;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->az:Lcom/amap/api/col/l3/di;

    .line 112
    new-instance p1, Lcom/amap/api/col/l3/dk;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amap/api/col/l3/dk;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    .line 113
    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3/dk;->a(Lcom/amap/api/col/l3/dk$a;)V

    return-void
.end method

.method static synthetic A(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/j$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->aV:Lcom/amap/api/col/l3/j$b;

    return-object p0
.end method

.method private A()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->requestRender()V

    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/am;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->bo:Lcom/amap/api/col/l3/am;

    return-object p0
.end method

.method static synthetic C(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    return-object p0
.end method

.method static synthetic D(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/dg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->aW:Lcom/amap/api/col/l3/dg;

    return-object p0
.end method

.method static synthetic E(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/dg;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aW:Lcom/amap/api/col/l3/dg;

    return-object v0
.end method

.method static synthetic F(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    return-object p0
.end method

.method static synthetic G(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/af;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    return-object p0
.end method

.method static synthetic H(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/j;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/j;->aw:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/j;II)Lcom/amap/api/maps/model/Poi;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/j;->b(II)Lcom/amap/api/maps/model/Poi;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    .locals 11

    move-object v10, p0

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v1, v10, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    const/16 v3, 0x805

    const/4 v7, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 153
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 154
    :cond_0
    iget-boolean v0, v10, Lcom/amap/api/col/l3/j;->aM:Z

    if-nez v0, :cond_1

    .line 155
    iget-object v1, v10, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_3

    const/16 v3, 0x7dd

    const/4 v7, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 156
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    iget-boolean v0, v10, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/amap/api/col/l3/j;->a:Z

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lcom/amap/api/col/l3/j$19;

    move-object v1, v0

    move-object v2, p0

    move/from16 v3, p5

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/col/l3/j$19;-><init>(Lcom/amap/api/col/l3/j;ZIIIIZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 159
    :cond_2
    :try_start_2
    iget-object v0, v10, Lcom/amap/api/col/l3/j;->bc:Lcom/amap/api/col/l3/j$a;

    move v1, p1

    iput v1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    move v1, p2

    .line 160
    iput v1, v0, Lcom/amap/api/col/l3/j$a;->d:I

    move v1, p3

    .line 161
    iput v1, v0, Lcom/amap/api/col/l3/j$a;->e:I

    move v1, p4

    .line 162
    iput v1, v0, Lcom/amap/api/col/l3/j$a;->f:I

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, v0, Lcom/amap/api/col/l3/j$a;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(IIZ)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setSrvViewStateBoolValue(IIZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/j;IZ)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/col/l3/j;->a(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/j;Landroid/view/MotionEvent;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/col/l3/j$14;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3/j$14;-><init>(Lcom/amap/api/col/l3/j;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/j;Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->b(Lcom/amap/api/maps/model/CameraPosition;)V

    return-void
.end method

.method private a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 57
    invoke-virtual {p1, p2, p3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->screenToP20Point(FFLandroid/graphics/Point;)V

    .line 58
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-long p1, p1

    iget p3, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, p3

    const/16 p3, 0x14

    invoke-static {p1, p2, v0, v1, p3}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 59
    iget-wide p2, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide p2, p4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 60
    iget-wide p2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide p2, p4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 61
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method private a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 214
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-nez v0, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    iput-object p4, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    .line 216
    iput-wide p2, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mDuration:J

    .line 217
    iget-boolean p2, p0, Lcom/amap/api/col/l3/j;->Z:Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->interruptAnimation()V

    .line 219
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 220
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    .line 221
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 223
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    .line 224
    iget-object p1, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz p1, :cond_3

    .line 225
    invoke-interface {p1}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/v;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    monitor-enter p0

    .line 165
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->aL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    .line 167
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v1}, Lcom/amap/api/col/l3/v;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3/j;->g:I

    .line 168
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v1}, Lcom/amap/api/col/l3/v;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3/j;->h:I

    .line 169
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->aQ:Z

    .line 170
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->initConnectionManager()V

    const/4 v1, 0x1

    .line 171
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/j;->r(I)V

    .line 172
    new-instance v2, Lcom/amap/api/col/l3/j$28;

    invoke-direct {v2, p0}, Lcom/amap/api/col/l3/j$28;-><init>(Lcom/amap/api/col/l3/j;)V

    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/j;->a(Ljava/lang/Runnable;)V

    .line 173
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x1f01

    .line 174
    :try_start_1
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/j;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapState;->getNativeInstance()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 177
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 178
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    .line 179
    invoke-virtual {v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    .line 180
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    .line 181
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 182
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    .line 183
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3, v1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/ae/gmap/GLMapState;Z)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3/s;->a(Landroid/content/Context;)V

    .line 185
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->ar:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aq:Ljava/lang/Thread;

    const-string v2, "AuthThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ar:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->au:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_2

    .line 187
    invoke-interface {v0, p1, p2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 188
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineInit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a([Lcom/autonavi/ae/gmap/style/StyleItem;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 243
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v8, p1

    .line 244
    invoke-direct/range {v1 .. v8}, Lcom/amap/api/col/l3/j;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    .line 245
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/el;->a(Landroid/content/Context;Z)V

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/el;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(III)Z
    .locals 3

    .line 17
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->n(I)F

    move-result v0

    float-to-int v0, v0

    .line 19
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMaxZoomLevel(I)I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 20
    :try_start_0
    iget-boolean p1, p0, Lcom/amap/api/col/l3/j;->aa:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/af;->isZoomInByScreenCenter()Z

    move-result p1

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->j:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 23
    iput p3, p1, Landroid/graphics/Point;->y:I

    .line 24
    invoke-static {v0, p1}, Lcom/amap/api/col/l3/aj;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 25
    invoke-static {v0, p1}, Lcom/amap/api/col/l3/aj;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImp"

    const-string p3, "onDoubleTap"

    .line 27
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static synthetic a(Lcom/amap/api/col/l3/j;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/amap/api/col/l3/j;->V:Z

    return p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object p0
.end method

.method private b(II)Lcom/amap/api/maps/model/Poi;
    .locals 12

    .line 61
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v5, 0x19

    const/4 v6, 0x1

    invoke-virtual {v4, v6, p1, p2, v5}, Lcom/autonavi/ae/gmap/GLMapEngine;->getLabelBuffer(IIII)[B

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, p2, :cond_8

    new-instance v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;

    invoke-direct {v7}, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;-><init>()V

    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v8

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v9

    add-int/lit8 v4, v4, 0x4

    iput v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->x:I

    iget-object v8, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v8}, Lcom/amap/api/col/l3/v;->getHeight()I

    move-result v8

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->y:I

    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->type:I

    add-int/lit8 v4, v4, 0x4

    invoke-static {p1, v4}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v8

    iput v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->mSublayerId:I

    add-int/lit8 v4, v4, 0x4

    aget-byte v8, p1, v4

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iput-boolean v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->mIsFouces:Z

    add-int/lit8 v4, v4, 0x1

    aget-byte v8, p1, v4

    if-nez v8, :cond_5

    iput-object v1, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const-string v8, ""

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v2, :cond_6

    add-int v10, v9, v4

    aget-byte v11, p1, v10

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, p1, v10

    int-to-char v8, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    iput-object v8, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    :goto_5
    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v4, :cond_7

    invoke-static {p1, v8}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getShort([BI)S

    move-result v11

    int-to-char v11, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto/16 :goto_2

    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;

    goto :goto_8

    :cond_9
    move-object p1, v1

    :goto_8
    if-eqz p1, :cond_a

    .line 65
    iget p2, p1, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    int-to-long v3, p2

    iget p2, p1, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    int-to-long v5, p2

    invoke-static {v3, v4, v5, v6, v2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p2

    .line 66
    new-instance v0, Lcom/amap/api/maps/model/Poi;

    iget-object v2, p1, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, p2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, p2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object p1, p1, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    invoke-direct {v0, v2, v9, p1}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_a
    return-object v1
.end method

.method private b(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->c(Lcom/amap/api/maps/model/CameraPosition;)Z

    move-result p1

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->am:Z

    if-eq p1, v0, :cond_0

    .line 5
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->am:Z

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/amap/api/col/l3/j;->d(IZ)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/amap/api/col/l3/j;->am:Z

    if-nez p1, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->am:Z

    .line 9
    invoke-virtual {p0, v1, v1}, Lcom/amap/api/col/l3/j;->d(IZ)V

    :cond_2
    return-void
.end method

.method private b(Z[B)V
    .locals 9

    .line 76
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 77
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/af;->setLogoEnable(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    .line 78
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/col/l3/j;->g(IZ)V

    .line 79
    new-instance p1, Lcom/amap/api/col/l3/do;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/amap/api/col/l3/do;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomTextureResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    .line 81
    array-length v2, p2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/amap/api/col/l3/do;->a([BZ)Lcom/amap/api/col/l3/dp;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p2}, Lcom/amap/api/col/l3/dp;->c()[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object p2, v1

    move-object v2, p2

    :goto_2
    if-nez v2, :cond_7

    .line 83
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, p2, v0}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;Z)Lcom/amap/api/col/l3/dp;

    move-result-object v1

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 84
    invoke-virtual {v1}, Lcom/amap/api/col/l3/dp;->c()[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object v2

    :cond_6
    move-object p2, v1

    .line 85
    :cond_7
    invoke-virtual {p1}, Lcom/amap/api/col/l3/do;->a()I

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/do;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomBackgroundColor(I)V

    :cond_8
    if-eqz p2, :cond_9

    .line 87
    invoke-virtual {p2}, Lcom/amap/api/col/l3/dp;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 88
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    if-eqz p1, :cond_a

    .line 89
    invoke-virtual {p2}, Lcom/amap/api/col/l3/dp;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/dk;->a(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/dk;->a(Lcom/amap/api/col/l3/dp;)V

    .line 92
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/dk;->b()V

    return-void

    .line 93
    :cond_9
    invoke-direct {p0, v2}, Lcom/amap/api/col/l3/j;->a([Lcom/autonavi/ae/gmap/style/StyleItem;)V

    :cond_a
    return-void

    :cond_b
    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3/j;->g(IZ)V

    const/4 v2, 0x1

    .line 95
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v3

    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v4

    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/amap/api/col/l3/j;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/z;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 45
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    .line 46
    invoke-virtual {p1}, Lcom/amap/api/col/l3/z;->c()Lcom/amap/api/col/l3/cp;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 48
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    if-eqz v2, :cond_2

    .line 49
    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->f()I

    move-result v1

    if-gtz v1, :cond_2

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/cp;)V

    return v0

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/cp;)V

    .line 53
    invoke-interface {p1}, Lcom/amap/api/col/l3/cp;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    invoke-interface {p1}, Lcom/amap/api/col/l3/cp;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 55
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 56
    iget-wide v3, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6, v3, v4, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 57
    invoke-static {v2}, Lcom/amap/api/col/l3/aj;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v1, p1}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/cp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "onMarkerTap"

    .line 59
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-object p0
.end method

.method private c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aa:Z

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->isUseAnchor:Z

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->anchorX:I

    .line 29
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->anchorY:I

    .line 30
    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    .line 32
    :cond_1
    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    if-nez v0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    return-void
.end method

.method private c(II)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getSrvViewStateBoolValue(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/amap/api/maps/model/CameraPosition;)Z
    .locals 8

    .line 2
    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/4 v1, 0x0

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean p1, p1, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz p1, :cond_5

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-long v3, v3

    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-long v5, v5

    const/16 v7, 0x14

    invoke-static {v3, v4, v5, v6, v7}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-wide v4, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3/eg;->a(DD)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_1
    xor-int/2addr v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method static synthetic d(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapTouchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object v0
.end method

.method private h(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 9

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->Z:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/amap/api/col/l3/j;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 7
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result p1

    int-to-long v3, p1

    const/16 p1, 0x14

    invoke-static {v1, v2, v3, v4, p1}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    new-instance v7, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    move-object v1, v7

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 10
    :goto_0
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 11
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 12
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 13
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 16
    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 17
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 18
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 19
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 20
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 21
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/col/l3/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/j;->aJ:Z

    return p0
.end method

.method static synthetic k(Lcom/amap/api/col/l3/j;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->aJ:Z

    return v0
.end method

.method static synthetic l(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ae;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    return-object p0
.end method

.method static synthetic m(Lcom/amap/api/col/l3/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/j;->ak:Z

    return p0
.end method

.method private n(I)F
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic n(Lcom/amap/api/col/l3/j;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->ak:Z

    return v0
.end method

.method static synthetic o(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnPOIClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-object p0
.end method

.method private o(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->q(I)V

    .line 5
    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    return-void
.end method

.method static synthetic p(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnMapClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->y:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-object p0
.end method

.method private p(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->q(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapRender;->renderResume()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    return-void
.end method

.method static synthetic q(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ao;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    return-object p0
.end method

.method private q(I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/amap/api/col/l3/j$20;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3/j$20;-><init>(Lcom/amap/api/col/l3/j;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r(Lcom/amap/api/col/l3/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/j;->aT:I

    return p0
.end method

.method private r(I)V
    .locals 12

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 5
    aget v1, v0, v1

    const/4 v3, 0x1

    .line 6
    aget v3, v0, v3

    .line 7
    aget v0, v0, v2

    move v8, v0

    move v6, v1

    move v7, v3

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/amap/api/col/l3/j;->c(II)Z

    move-result v9

    .line 9
    iget-object v4, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v10, p0, Lcom/amap/api/col/l3/j;->g:I

    iget v11, p0, Lcom/amap/api/col/l3/j;->h:I

    move v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/autonavi/ae/gmap/GLMapEngine;->loadStartResource(IIIIZII)V

    return-void
.end method

.method static synthetic s(Lcom/amap/api/col/l3/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/col/l3/j;->aU:I

    return p0
.end method

.method static synthetic t(Lcom/amap/api/col/l3/j;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/amap/api/col/l3/j;->aK:I

    return v0
.end method

.method static synthetic u(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    return-object p0
.end method

.method static synthetic v(Lcom/amap/api/col/l3/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    return p0
.end method

.method static synthetic w(Lcom/amap/api/col/l3/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    return p0
.end method

.method static synthetic x(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/GLMapRender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    return-object p0
.end method

.method private declared-synchronized x()V
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/ab;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/ab;->e()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic y(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/model/MyTrafficStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/col/l3/j;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    return-object p0
.end method

.method private y()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->as:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->z()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->as:Z

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapGeoCenter()Landroid/graphics/Point;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    .line 8
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    .line 9
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    .line 10
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    .line 11
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    .line 12
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isMapStateChange()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-long v3, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-long v5, v0

    const/16 v0, 0x14

    invoke-static {v3, v4, v5, v6, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    .line 14
    new-instance v2, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v9, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 15
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 16
    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v5

    invoke-direct {v2, v9, v3, v4, v5}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    .line 17
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 18
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0xa

    .line 19
    iput v3, v0, Landroid/os/Message;->what:I

    .line 20
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aJ:Z

    .line 23
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->k()V

    .line 24
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->z()V

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/af;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeGridRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 28
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->q()V

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/af;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 30
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateCompassView()V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/af;->isScaleControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateScaleView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 35
    :cond_7
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aI:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 36
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->onChangeFinish()V

    :cond_8
    return-void
.end method

.method private z()V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {p0}, Lcom/amap/api/col/l3/em;->a(Lcom/amap/api/col/l3/u;)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getPixel20Bound(Landroid/graphics/Rect;)V

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->k:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;II)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapPerPixelUnitLength(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic z(Lcom/amap/api/col/l3/j;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->as:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithGestureInfo(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/col/l3/ab;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    .line 99
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/col/l3/ab;

    .line 101
    invoke-virtual {v3}, Lcom/amap/api/col/l3/ab;->e()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final a(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v2

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    .line 68
    iget-boolean v4, v0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v4, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    move/from16 v5, p2

    invoke-static {v4, v5}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v4

    .line 70
    new-instance v5, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    if-eqz v1, :cond_1

    .line 71
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    .line 72
    iget-wide v7, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v9, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v7, v8, v9, v10, v6}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    .line 74
    invoke-virtual {v5, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    .line 75
    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v7, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v1, v7}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    .line 76
    invoke-virtual {v5, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 77
    invoke-virtual {v5}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    .line 78
    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 79
    :cond_1
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    const/4 v4, 0x0

    .line 80
    invoke-direct {v0, v5, v4, v4, v1}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 81
    new-instance v4, Lcom/amap/api/maps/model/LatLng;

    iget-wide v7, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v9, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 82
    invoke-direct {v0, v5, v2, v3, v1}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 83
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v13, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/16 v17, 0x0

    move-object v12, v2

    move-wide v15, v6

    invoke-direct/range {v12 .. v17}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    .line 84
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 85
    invoke-virtual {v5}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    .line 86
    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final a()Lcom/autonavi/ae/gmap/GLMapEngine;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-object v0
.end method

.method public final a(DDLcom/autonavi/amap/mapcore/FPoint;)V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 53
    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 p3, 0x1

    iget p4, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToMapPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public final a(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    .line 45
    invoke-static {p3, p4, p1, p2, p5}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method

.method public final a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->mapToP20Point(IFFLandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 9
    iget v0, p0, Lcom/amap/api/col/l3/j;->aS:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    return-void

    .line 10
    :cond_0
    iput p1, p0, Lcom/amap/api/col/l3/j;->aS:I

    return-void
.end method

.method public final a(IF)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3/ey;->a(IF)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 248
    iput p1, p0, Lcom/amap/api/col/l3/j;->g:I

    .line 249
    iput p2, p0, Lcom/amap/api/col/l3/j;->h:I

    .line 250
    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapWidth(I)V

    .line 251
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, p2}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(IIII)V
    .locals 8

    monitor-enter p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 150
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/amap/api/col/l3/j;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(IILandroid/graphics/PointF;)V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    int-to-float p1, p1

    int-to-float p2, p2

    .line 89
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToMapGPoint(IFFLandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public final a(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0

    .line 48
    invoke-static {p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    return-void
.end method

.method public final a(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToMapPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public final a(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    int-to-float p1, p1

    int-to-float p2, p2

    .line 63
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToP20Point(IFFLandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/MotionEvent;)V
    .locals 10

    const/4 v0, 0x0

    .line 108
    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->ah:Z

    .line 109
    new-instance v0, Lcom/amap/api/col/l3/j$17;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3/j$17;-><init>(Lcom/amap/api/col/l3/j;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    .line 110
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/z;->a(Landroid/view/MotionEvent;)Lcom/amap/api/col/l3/cp;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 111
    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IMarker;->isDraggable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    new-instance p1, Lcom/amap/api/maps/model/Marker;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    invoke-direct {p1, p2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    .line 113
    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    invoke-interface {p2}, Lcom/amap/api/col/l3/cp;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object p2

    .line 115
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v7

    .line 116
    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/l3/j;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 117
    iget v1, v7, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, -0x3c

    iput v1, v7, Landroid/graphics/Point;->y:I

    .line 118
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 119
    iget v2, v7, Landroid/graphics/Point;->x:I

    iget v3, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/col/l3/j;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 120
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v3, v5

    iget-wide v5, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v3, v5

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v5, v8

    iget-wide p1, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v5, p1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 121
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {p1, v2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 122
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    iget-object p2, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    invoke-virtual {p1, p2}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/col/l3/cp;)V

    .line 123
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz p1, :cond_0

    .line 124
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    invoke-interface {p1, p2}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    .line 125
    :cond_0
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->ae:Z

    .line 126
    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    .line 127
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    if-eqz p1, :cond_2

    .line 129
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, v1, p2, p1}, Lcom/amap/api/col/l3/j;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 131
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {p2, v1}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    .line 132
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->ai:Z

    .line 133
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    .line 134
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AMapDelegateImp"

    const-string v0, "onLongPress"

    .line 135
    invoke-static {p1, p2, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    .locals 7

    .line 145
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aa:Z

    iput-boolean v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isUseAnchor:Z

    .line 147
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorX:I

    .line 148
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorY:I

    .line 149
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/af;->isGestureScaleByMapCenter()Z

    move-result v4

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v5

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v6

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->addGestureMessage(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/j;->c(II)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->a:Z

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Lcom/amap/api/col/l3/j$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/col/l3/j$8;-><init>(Lcom/amap/api/col/l3/j;IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ba:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 16
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->T:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-nez v0, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-nez v0, :cond_2

    if-nez v0, :cond_2

    .line 32
    new-instance v0, Lcom/amap/api/col/l3/cy;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/cy;-><init>(Lcom/amap/api/col/l3/u;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 34
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/cy;->a(Landroid/location/Location;)V

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_4

    .line 36
    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 37
    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    return-void

    .line 38
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz p1, :cond_6

    .line 39
    invoke-virtual {p1}, Lcom/amap/api/col/l3/cy;->b()V

    :cond_6
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "showMyLocationOverlay"

    .line 41
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/ab;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/col/l3/ab;->f()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final a(Lcom/amap/api/col/l3/cp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ao;->d()Lcom/amap/api/col/l3/an;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/an;->a(Lcom/amap/api/col/l3/cp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method protected final a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangedCounter()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetChangedCounter()V

    .line 229
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->I:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0}, Lcom/amap/api/maps/model/AMapGestureListener;->onMapStable()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    if-nez v0, :cond_2

    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v0}, Lcom/amap/api/col/l3/v;->isEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 233
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapDelegateImp"

    const-string v2, "cameraChangeFinish"

    .line 234
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Lcom/autonavi/ae/gmap/listener/MapWidgetListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    return-void
.end method

.method public final a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->Z:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 197
    new-instance v0, Lcom/amap/api/col/l3/ah;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ah;-><init>()V

    .line 198
    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 199
    new-instance v1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 200
    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    .line 201
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    .line 202
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    .line 203
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    .line 204
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V

    .line 205
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    .line 207
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessage()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 210
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    .line 211
    iput-boolean v1, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->isChangeFinished:Z

    .line 212
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    .line 213
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/amap/api/col/l3/dp;)V
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->setCustomTextureResourcePath(Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p2}, Lcom/amap/api/col/l3/dp;->c()[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object p1

    .line 242
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->a([Lcom/autonavi/ae/gmap/style/StyleItem;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->b(Z)V

    :cond_0
    return-void
.end method

.method public final a(Z[B)V
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/j;->b(Z[B)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 137
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/col/l3/ao;->d()Lcom/amap/api/col/l3/an;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/amap/api/col/l3/an;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/z;->c()Lcom/amap/api/col/l3/cp;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v3, v2}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    return v0

    .line 139
    :cond_5
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v0

    .line 140
    :cond_6
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/col/l3/j;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    :cond_7
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/l3/at;->a(Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    return v0

    .line 141
    :cond_9
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/col/l3/j;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v3, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v5, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v1, v2}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/col/l3/cr;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    new-instance v3, Lcom/amap/api/maps/model/Polyline;

    check-cast v1, Lcom/amap/api/col/l3/cu;

    invoke-direct {v3, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V

    .line 142
    :cond_a
    new-instance v1, Lcom/amap/api/col/l3/j$13;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/l3/j$13;-><init>(Lcom/amap/api/col/l3/j;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p1

    const-string v1, "AMapDelegateImp"

    const-string v2, "onSingleTapUp"

    .line 143
    invoke-static {p1, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 44
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/col/l3/cm;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Arc;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/col/l3/cn;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Circle;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addCrossVector(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getAttribute()Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->addOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->resumeMarker(Landroid/graphics/Bitmap;)V

    .line 7
    :cond_2
    new-instance v1, Lcom/amap/api/maps/model/CrossOverlay;

    invoke-direct {v1, p1, v0}, Lcom/amap/api/maps/model/CrossOverlay;-><init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;)V

    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/col/l3/co;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    return-object p1
.end method

.method public final addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/l3/z;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final addMultiPointOverlay(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/amap/api/maps/model/MultiPointOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/at;->a(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/MultiPointOverlay;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/MultiPointOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addNaviRouteOverlay()Lcom/amap/api/maps/model/RouteOverlay;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    .line 3
    new-instance v1, Lcom/amap/api/maps/model/RouteOverlay;

    invoke-direct {v1, v0}, Lcom/amap/api/maps/model/RouteOverlay;-><init>(Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/col/l3/cq;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v1

    iget v2, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iget v3, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iget v4, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iget v5, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    iget-object p1, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object p1, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->addOverlayTextureItem(IIFFII)Z

    :cond_0
    return-void
.end method

.method public final addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/col/l3/ct;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/col/l3/cu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/z;->a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;

    move-result-object p1

    return-object p1
.end method

.method public final addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ae;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;

    move-result-object p1

    return-object p1
.end method

.method public final afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p2, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result p2

    .line 3
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aG:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/amap/api/col/l3/j;->ax:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    .line 9
    :goto_0
    iget v0, p0, Lcom/amap/api/col/l3/j;->aK:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/amap/api/col/l3/j;->aK:I

    .line 11
    :cond_2
    iget v0, p0, Lcom/amap/api/col/l3/j;->aE:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 12
    iput p2, p0, Lcom/amap/api/col/l3/j;->aE:F

    .line 13
    :cond_3
    iget-boolean p2, p0, Lcom/amap/api/col/l3/j;->aQ:Z

    if-nez p2, :cond_4

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aQ:Z

    .line 15
    new-instance p2, Lcom/amap/api/col/l3/j$41;

    invoke-direct {p2, p0, p1}, Lcom/amap/api/col/l3/j$41;-><init>(Lcom/amap/api/col/l3/j;I)V

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3/j;->a(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final afterDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->y()V

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ae;->b()V

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    const/4 p2, 0x0

    iget v0, p0, Lcom/amap/api/col/l3/j;->at:I

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/col/l3/r;->a(ZI)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getViewMatrix()[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getProjectionMatrix()[F

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/amap/api/col/l3/at;->a(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/col/l3/z;->a()V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->K:Lcom/amap/api/col/l3/dc;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/col/l3/dc;->a(II)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_4
    return-void
.end method

.method public final animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-void
.end method

.method public final animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    .line 1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/col/l3/j;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public final b(I)F
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    .line 19
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    .line 20
    :try_start_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object p2

    .line 22
    iget-object p3, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget p4, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-virtual {p3, v1, p4, v0, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToScreenPoint(IIILandroid/graphics/PointF;)V

    .line 23
    iget p3, p2, Landroid/graphics/PointF;->x:F

    const p4, -0x39e3c000    # -10000.0f

    cmpl-float p3, p3, p4

    if-nez p3, :cond_0

    iget p3, p2, Landroid/graphics/PointF;->y:F

    cmpl-float p3, p3, p4

    if-nez p3, :cond_0

    .line 24
    iget-object p3, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p3, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object p3

    const/4 p4, 0x0

    .line 25
    invoke-virtual {p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    .line 26
    invoke-virtual {p3}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    .line 27
    iget p4, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p4, p1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->p20ToScreenPoint(IILandroid/graphics/PointF;)V

    .line 28
    invoke-virtual {p3}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    .line 29
    :cond_0
    iget p1, p2, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Point;->x:I

    .line 30
    iget p1, p2, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iput p1, p5, Landroid/graphics/Point;->y:I

    .line 31
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final b(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 3

    .line 12
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToP20Point(IFFLandroid/graphics/Point;)V

    .line 15
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-long p1, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v2, 0x14

    invoke-static {p1, p2, v0, v1, v2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 16
    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v0, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 17
    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v0, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 18
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public final b(IZ)V
    .locals 1

    const/16 v0, 0x12

    .line 68
    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/col/l3/j;->a(IIZ)V

    .line 69
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 71
    new-instance v0, Lcom/amap/api/col/l3/j$21;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3/j$21;-><init>(Lcom/amap/api/col/l3/j;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->be:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 73
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 74
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 37
    iget-object v4, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/col/l3/ab;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/ab;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 38
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->ay:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Z)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(ILandroid/view/MotionEvent;)Z
    .locals 2

    .line 40
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 43
    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/col/l3/j;->a(III)Z

    return v1
.end method

.method public final beforeDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->y()V

    .line 2
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    const/4 p2, 0x1

    iget v0, p0, Lcom/amap/api/col/l3/j;->at:I

    invoke-virtual {p1, p2, v0}, Lcom/amap/api/col/l3/r;->a(ZI)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ae;->g()V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->n(I)F

    move-result v0

    float-to-int v0, v0

    .line 9
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMinZoomLevel(I)I

    move-result p1

    if-le v0, p1, :cond_1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/aj;->b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "onDoubleTap"

    .line 12
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    :cond_1
    return-void
.end method

.method public final c(IZ)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 21
    new-instance v0, Lcom/amap/api/col/l3/j$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3/j$22;-><init>(Lcom/amap/api/col/l3/j;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bf:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 23
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 24
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->c(Z)V

    :cond_0
    return-void
.end method

.method public final calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-ne p1, p2, :cond_0

    if-ne p2, p3, :cond_0

    if-ne p3, p4, :cond_0

    .line 1
    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    new-instance p1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMaxZoomLevel()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 6
    invoke-virtual {v1, p5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 7
    invoke-virtual {v1, p6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 8
    new-instance p5, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 p6, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v2

    invoke-direct {p5, p6, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    .line 9
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object p1

    .line 12
    invoke-virtual {p5}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    if-eqz p1, :cond_1

    .line 13
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p2

    .line 14
    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object p4, p3

    check-cast p4, Lcom/autonavi/amap/mapcore/IPoint;

    iget p4, p4, Landroid/graphics/Point;->x:I

    check-cast p3, Lcom/autonavi/amap/mapcore/IPoint;

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {p4, p3, p2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 15
    new-instance p3, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance p4, Lcom/amap/api/maps/model/LatLng;

    iget-wide p5, p2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v0, p2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p4, p5, p6, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p3, p1, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object p1

    .line 18
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result p2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result p3

    invoke-static {p2, p3, p1}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    .line 19
    new-instance p2, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    new-instance p4, Lcom/amap/api/maps/model/LatLng;

    iget-wide p5, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {p4, p5, p6, v0, v1}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    return-object p2
.end method

.method public final canStopMapRender()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    :cond_0
    return v1
.end method

.method public final changeSurface(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iput-boolean v2, v1, Lcom/amap/api/col/l3/j;->aQ:Z

    iget-boolean v3, v1, Lcom/amap/api/col/l3/j;->aM:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/amap/api/col/l3/j;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    iput v10, v1, Lcom/amap/api/col/l3/j;->g:I

    iput v11, v1, Lcom/amap/api/col/l3/j;->h:I

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/amap/api/col/l3/j;->as:Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, Lcom/amap/api/col/l3/j;->an:Landroid/graphics/Rect;

    iget-boolean v2, v1, Lcom/amap/api/col/l3/j;->aN:Z

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v3, v1, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x32

    const/16 v7, 0x78

    const/16 v8, 0x64

    if-le v2, v7, :cond_6

    const/16 v9, 0xa0

    const/16 v13, 0x1e0

    if-gt v2, v9, :cond_1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v2, v13, :cond_6

    const/16 v6, 0x78

    goto :goto_2

    :cond_1
    const/16 v7, 0xf0

    if-gt v2, v7, :cond_3

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_2

    const/16 v6, 0x3c

    goto :goto_0

    :cond_2
    const/16 v6, 0x46

    :goto_0
    const/16 v19, 0x2

    goto :goto_3

    :cond_3
    const/16 v4, 0x140

    if-gt v2, v4, :cond_4

    :goto_1
    const/16 v19, 0x3

    goto :goto_3

    :cond_4
    if-gt v2, v13, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0x28

    const/4 v4, 0x4

    const/16 v19, 0x4

    goto :goto_3

    :cond_6
    const/16 v6, 0x64

    :goto_2
    const/16 v19, 0x1

    :goto_3
    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x803

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    move/from16 v16, v6

    move/from16 v17, v3

    move/from16 v18, v3

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    int-to-float v3, v6

    div-float/2addr v3, v2

    iput v3, v1, Lcom/amap/api/col/l3/j;->aF:F

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapZoomScale(F)V

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v10}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapWidth(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v11}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_7
    iget-object v3, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v4, 0x1

    const/16 v5, 0x3e9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-boolean v2, v1, Lcom/amap/api/col/l3/j;->aG:Z

    if-eqz v2, :cond_8

    iget-object v3, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v4, 0x1

    const/16 v5, 0x76c

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_4

    :cond_8
    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x76c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_4
    const/16 v2, 0x12

    invoke-direct {v1, v12, v2}, Lcom/amap/api/col/l3/j;->c(II)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v4, 0x1

    const/16 v5, 0x3fd

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x3fe

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_5

    :cond_9
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/16 v4, 0x3fd

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x3fe

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_5
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/16 v4, 0x3ff

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x402

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    const/16 v2, 0x10

    invoke-direct {v1, v12, v2}, Lcom/amap/api/col/l3/j;->c(II)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v3, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v4, 0x1

    const/16 v5, 0x7da

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_6

    :cond_a
    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x7da

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_6
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/16 v4, 0x405

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x7dc

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_b
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->changeSurface(IIIIIII)V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v12, v1, Lcom/amap/api/col/l3/j;->aN:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v2, v1, Lcom/amap/api/col/l3/j;->aT:I

    if-nez v2, :cond_c

    iget v3, v1, Lcom/amap/api/col/l3/j;->aU:I

    if-nez v3, :cond_c

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    shr-int/lit8 v3, v10, 0x1

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    shr-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    goto :goto_7

    :cond_c
    iget-object v3, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    add-int/lit8 v4, v10, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Lcom/amap/api/col/l3/j;->aU:I

    add-int/lit8 v4, v11, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    :goto_7
    iget-object v13, v1, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v14, 0x1

    const/16 v15, 0x44c

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v16

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iput-boolean v12, v1, Lcom/amap/api/col/l3/j;->a:Z

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bj:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_d
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->be:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_e
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bc:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_f
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->ba:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_10
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bd:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_11
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->aZ:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_12
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bf:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_13
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bh:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_14
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bi:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_15

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_15
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bm:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_16
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bk:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_17
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bb:Lcom/amap/api/col/l3/j$a;

    iget-boolean v3, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    if-eqz v3, :cond_18

    invoke-virtual {v2}, Lcom/amap/api/col/l3/j$a;->run()V

    :cond_18
    iget-object v2, v1, Lcom/amap/api/col/l3/j;->au:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v2, :cond_19

    invoke-interface {v2, v0, v10, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_19
    iget-object v0, v1, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    iget-object v2, v1, Lcom/amap/api/col/l3/j;->bl:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final checkMapState(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    iget-object v1, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v1, :cond_8

    iget-boolean v2, v0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 6
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    .line 7
    iget-object v1, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    new-array v1, v10, [Lcom/autonavi/amap/mapcore/IPoint;

    aput-object v2, v1, v12

    aput-object v3, v1, v11

    .line 8
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    move-object v2, v1

    .line 9
    :cond_1
    iget-object v13, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    aget-object v1, v2, v12

    iget v14, v1, Landroid/graphics/Point;->x:I

    aget-object v1, v2, v12

    iget v15, v1, Landroid/graphics/Point;->y:I

    aget-object v1, v2, v11

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v3, v2, v11

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v19

    move/from16 v16, v1

    move/from16 v17, v3

    invoke-static/range {v13 .. v19}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)F

    move-result v1

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v3

    .line 11
    iget-object v4, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v4

    .line 13
    iget-object v5, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v5

    cmpl-float v6, v1, v4

    if-gez v6, :cond_5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gez v4, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    .line 15
    :cond_5
    :goto_0
    invoke-virtual {v9, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 16
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v13

    .line 17
    invoke-virtual {v9, v13}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    .line 18
    iget v14, v13, Landroid/graphics/Point;->x:I

    .line 19
    iget v15, v13, Landroid/graphics/Point;->y:I

    .line 20
    aget-object v1, v2, v12

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v4, v2, v11

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v2, v2, v11

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget-object v6, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    move v7, v14

    move v8, v15

    invoke-static/range {v1 .. v8}, Lcom/amap/api/col/l3/em;->a(IIIILcom/autonavi/amap/mapcore/MapConfig;Lcom/autonavi/ae/gmap/GLMapState;II)[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 21
    array-length v2, v1

    if-ne v2, v10, :cond_6

    .line 22
    aget v14, v1, v12

    .line 23
    aget v15, v1, v11

    .line 24
    :cond_6
    invoke-virtual {v9, v14, v15}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    .line 25
    invoke-virtual {v13}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    return-void

    .line 26
    :cond_7
    iget-object v1, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v1

    .line 28
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v2

    .line 29
    iget-object v3, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v3

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 31
    invoke-virtual {v9, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_1
    return-void
.end method

.method public final clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->clear(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "clear"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final clear(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->j()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/col/l3/cy;->c()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/cy;->d()Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3/cy;->e()V

    :cond_1
    move-object p1, v1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/r;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ae;->c()V

    .line 11
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/z;->a(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/amap/api/col/l3/ey;->j()V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/amap/api/col/l3/at;->c()V

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "clear"

    .line 17
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final clearException(I)V
    .locals 0

    return-void
.end method

.method public final createGLOverlay(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final createSurface(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/j;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final d()Lcom/autonavi/ae/gmap/GLMapState;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(IZ)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 9
    new-instance v0, Lcom/amap/api/col/l3/j$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3/j$23;-><init>(Lcom/amap/api/col/l3/j;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bj:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 11
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 12
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->d(Z)V

    :cond_0
    return-void
.end method

.method public final d(I)Z
    .locals 1

    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/j;->c(II)Z

    move-result p1

    return p1
.end method

.method public final destorySurface(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aR:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->destorySurface()V

    .line 4
    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getInstance()Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->reset()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onSurfaceDestroy(I)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aL:Ljavax/microedition/khronos/opengles/GL10;

    .line 9
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->aN:Z

    .line 10
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->aQ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->aR:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final destroy()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/at;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    .line 7
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aV:Lcom/amap/api/col/l3/j$b;

    .line 8
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/amap/api/col/l3/s;->d()V

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aC:Lcom/amap/api/col/l3/q;

    if-eqz v1, :cond_4

    .line 13
    iput-object v0, v1, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    .line 14
    invoke-virtual {v1}, Lcom/amap/api/col/l3/q;->b()V

    .line 15
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aC:Lcom/amap/api/col/l3/q;

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v1}, Lcom/amap/api/col/l3/r;->a()V

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v1}, Lcom/amap/api/col/l3/z;->g()V

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ae;->c()V

    iget-object v2, v1, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/amap/api/col/l3/de;->c()V

    iget-object v2, v1, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/de;->remove()V

    :cond_7
    iput-object v0, v1, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    .line 22
    :cond_8
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->x()V

    .line 23
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aq:Ljava/lang/Thread;

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 25
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aq:Ljava/lang/Thread;

    .line 26
    :cond_9
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->az:Lcom/amap/api/col/l3/di;

    if-eqz v1, :cond_a

    .line 27
    invoke-virtual {v1}, Lcom/amap/api/col/l3/di;->a()V

    .line 28
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->az:Lcom/amap/api/col/l3/di;

    .line 29
    :cond_a
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    if-eqz v1, :cond_b

    .line 30
    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/dk;->a(Lcom/amap/api/col/l3/dk$a;)V

    .line 31
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/dk;->a()V

    .line 32
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->aA:Lcom/amap/api/col/l3/dk;

    .line 33
    :cond_b
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_c

    .line 34
    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;)V

    .line 35
    new-instance v1, Lcom/amap/api/col/l3/j$40;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/j$40;-><init>(Lcom/amap/api/col/l3/j;)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xc8

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 37
    :cond_c
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    if-eqz v1, :cond_d

    .line 38
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ao;->b()V

    .line 39
    :cond_d
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v1, :cond_e

    .line 40
    invoke-virtual {v1}, Lcom/amap/api/col/l3/ey;->i()V

    .line 41
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    .line 42
    :cond_e
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz v1, :cond_f

    .line 43
    invoke-virtual {v1}, Lcom/amap/api/col/l3/cy;->b()V

    .line 44
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    .line 45
    :cond_f
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    .line 46
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->y:Lcom/amap/api/maps/AMap$OnMapClickListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->F:Lcom/amap/api/col/l3/n;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    .line 47
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 48
    invoke-static {}, Lcom/amap/api/col/l3/gv;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "destroy"

    .line 49
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v1, p0, Lcom/amap/api/col/l3/j;->ax:I

    const/4 v2, -0x1

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aI:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0, v3}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41700000    # 15.0f

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x42200000    # 40.0f

    :goto_1
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isWorldMapEnable()Z

    move-result v0

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->q()V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setWorldMapEnable(Z)V

    :cond_6
    const/high16 v0, 0x3f720000    # 0.9453125f

    const v1, 0x3f6effc1    # 0.93359f

    const v2, 0x3f68fc50    # 0.9101f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v0, v1, v2, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->drawFrame()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    .line 7
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->al:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/amap/api/col/l3/em;->a(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->al:Z

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->d()Lcom/amap/api/col/l3/eu;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->ab:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v4, p0, Lcom/amap/api/col/l3/j;->ab:Z

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->q()V

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/col/l3/j$16;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/col/l3/j$16;-><init>(Lcom/amap/api/col/l3/j;Lcom/amap/api/col/l3/eu;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_9
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aP:Z

    if-nez v0, :cond_a

    .line 10
    iput-boolean v4, p0, Lcom/amap/api/col/l3/j;->aP:Z

    .line 11
    new-instance v0, Lcom/amap/api/col/l3/j$15;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/j$15;-><init>(Lcom/amap/api/col/l3/j;)V

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/j;->a(Ljava/lang/Runnable;)V

    .line 12
    :cond_a
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->au:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_b

    .line 13
    invoke-interface {v0, p1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 14
    :cond_b
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_c
    :goto_3
    return-void
.end method

.method public final e()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/s;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/s;->a(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(IZ)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 10
    new-instance v0, Lcom/amap/api/col/l3/j$24;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3/j$24;-><init>(Lcom/amap/api/col/l3/j;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bh:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 13
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->e(Z)V

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aX:Lcom/amap/api/col/l3/s;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/s;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->a(I)V

    :cond_0
    return-void
.end method

.method public final f(IZ)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 8
    new-instance v0, Lcom/amap/api/col/l3/j$25;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3/j$25;-><init>(Lcom/amap/api/col/l3/j;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bi:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 11
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->f(Z)V

    :cond_0
    return-void
.end method

.method public final g(I)F
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->S:Lcom/amap/api/col/l3/r;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/r;->b()V

    return-void
.end method

.method public final g(IZ)V
    .locals 1

    const/16 v0, 0xc

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/col/l3/j;->a(IIZ)V

    .line 6
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 8
    new-instance v0, Lcom/amap/api/col/l3/j$26;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/col/l3/j$26;-><init>(Lcom/amap/api/col/l3/j;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bm:Lcom/amap/api/col/l3/j$a;

    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 11
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setHideLogoEnble(Z)V

    .line 14
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/af;->setLogoEnable(Z)V

    :cond_0
    return-void
.end method

.method public final getAMapProjection()Lcom/amap/api/maps/Projection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->M:Lcom/amap/api/col/l3/w;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V

    return-object v0
.end method

.method public final getAMapUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->L:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->L:Lcom/amap/api/maps/UiSettings;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->L:Lcom/amap/api/maps/UiSettings;

    return-object v0
.end method

.method public final getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->d()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v4

    .line 3
    iget v1, p0, Lcom/amap/api/col/l3/j;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/l3/j;->h:I

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 4
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getFov()F

    move-result v2

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 5
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraPosition([I)V

    .line 6
    new-instance v0, Lcom/amap/api/maps/model/AMapCameraInfo;

    const/4 v5, 0x0

    aget v5, v1, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v1, v6

    int-to-float v6, v6

    const/4 v7, 0x2

    aget v1, v1, v7

    int-to-float v7, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/maps/model/AMapCameraInfo;-><init>(FFFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCameraAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/j;->U:I

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->l(I)F

    move-result v0

    return v0
.end method

.method public final getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aa:Z

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/j;->h(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getGlOverlayMgrPtr()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getGlOverlayMgrPtr(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/maps/InfoWindowAnimationManager;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->K:Lcom/amap/api/col/l3/dc;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/InfoWindowAnimationManager;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V

    return-object v0
.end method

.method public final getLatLngRect([Lcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, v0, v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v4, p1, v1

    invoke-static {v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public final getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    return-object v0
.end method

.method public final getMapContentApprovalNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GS\uff082017\uff093426\u53f7 |\u00a0GS\uff082017\uff092550"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMapHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/j;->h:I

    return v0
.end method

.method public final getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->al:Z

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    return-void
.end method

.method public final getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/em;->b(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->b:Lcom/amap/api/col/l3/z;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/z;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->al:Z

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    return-void
.end method

.method public final getMapTextZIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/j;->at:I

    return v0
.end method

.method public final getMapType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/j;->ao:I

    return v0
.end method

.method public final getMapWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/j;->g:I

    return v0
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x41980000    # 19.0f

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public final getMyLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->F:Lcom/amap/api/col/l3/n;

    iget-object v0, v0, Lcom/amap/api/col/l3/n;->a:Landroid/location/Location;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/cy;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProjectionMatrix()[F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->o:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->o:[F

    return-object v0
.end method

.method public final getRenderMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v0}, Lcom/amap/api/col/l3/v;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public final getSatelliteImageApprovalNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "GS\uff082017\uff092906"

    return-object v0
.end method

.method public final getScalePerPixel()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->h()F

    move-result v1

    .line 3
    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v6

    mul-double v2, v2, v4

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    float-to-double v0, v1

    .line 4
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    div-double/2addr v2, v0

    double-to-float v0, v2

    iget v1, p0, Lcom/amap/api/col/l3/j;->aF:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float v0, v0, v1

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "getScalePerPixel"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    return-object v0
.end method

.method public final getViewMatrix()[F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->n:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getViewMatrix([F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->n:[F

    return-object v0
.end method

.method public final getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 5
    invoke-virtual {v1, p2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 6
    new-instance p1, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 p2, 0x1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v2

    invoke-direct {p1, p2, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getMapHeight()I

    move-result v7

    move v1, p2

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/amap/api/col/l3/em;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    if-eqz p2, :cond_0

    .line 10
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result p1

    return p1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result p1

    return p1
.end method

.method public final h()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/amap/api/col/l3/j;->U:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/j;->n(I)F

    move-result v0

    return v0
.end method

.method public final h(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->b(I)V

    :cond_0
    return-void
.end method

.method public final i()Lcom/amap/api/col/l3/x;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    return-object v0
.end method

.method public final i(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->c(I)V

    :cond_0
    return-void
.end method

.method public final isIndoorEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    return v0
.end method

.method public final isMaploaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->ab:Z

    return v0
.end method

.method public final isMyLocationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->T:Z

    return v0
.end method

.method public final isTrafficEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ao;->d()Lcom/amap/api/col/l3/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/l3/an;->b_()V

    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->d(I)V

    :cond_0
    return-void
.end method

.method public final k(I)F
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ey;->e(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final l(I)F
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCameraDegree(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final l()Landroid/graphics/Point;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->c()Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    return-object v0
.end method

.method public final m()Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m(I)Lcom/amap/api/col/l3/df;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aW:Lcom/amap/api/col/l3/dg;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/dg;->a(I)Lcom/amap/api/col/l3/df;

    move-result-object p1

    return-object p1
.end method

.method public final moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-void
.end method

.method public final n()Z
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v0

    const/high16 v2, 0x41880000    # 17.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/col/l3/am;->g:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    iget-object v2, v2, Lcom/amap/api/col/l3/am;->g:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-boolean v4, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToScreenPoint(IIILandroid/graphics/PointF;)V

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->an:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    .line 2
    iget v0, p0, Lcom/amap/api/col/l3/j;->U:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/j;->o(I)V

    return-void
.end method

.method public final onActivityResume()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    .line 2
    iget v1, p0, Lcom/amap/api/col/l3/j;->U:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v1

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/amap/api/col/l3/j;->p(I)V

    return-void
.end method

.method public final onChangeFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onException(II)V
    .locals 0

    return-void
.end method

.method public final onFling()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ae;->b(Z)V

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ak:Z

    return-void
.end method

.method public final onIndoorBuildingActivity(I[B)V
    .locals 7

    const-string p1, "utf-8"

    if-eqz p2, :cond_3

    .line 1
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/am;

    invoke-direct {v0}, Lcom/amap/api/col/l3/am;-><init>()V

    const/4 v1, 0x0

    .line 2
    aget-byte v2, p2, v1

    .line 3
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v0, Lcom/amap/api/col/l3/am;->a:Ljava/lang/String;

    add-int/2addr v2, v4

    add-int/lit8 v3, v2, 0x1

    .line 4
    aget-byte v2, p2, v2

    .line 5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/col/l3/am;->b:Ljava/lang/String;

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    .line 6
    aget-byte v3, p2, v3

    .line 7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    add-int/2addr v2, v3

    .line 8
    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v2, 0x1

    .line 9
    aget-byte v2, p2, v2

    .line 10
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    .line 11
    aget-byte v3, p2, v3

    .line 12
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v0, Lcom/amap/api/col/l3/am;->h:Ljava/lang/String;

    add-int/2addr v2, v3

    .line 13
    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v0, Lcom/amap/api/col/l3/am;->c:I

    add-int/lit8 v2, v2, 0x4

    .line 14
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    .line 15
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    .line 16
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/amap/api/col/l3/am;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 17
    :goto_0
    iget v4, v0, Lcom/amap/api/col/l3/am;->c:I

    if-ge v3, v4, :cond_2

    .line 18
    iget-object v4, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v2, 0x1

    .line 19
    aget-byte v2, p2, v2

    if-lez v2, :cond_0

    .line 20
    iget-object v5, v0, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v4, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v3

    add-int/2addr v4, v2

    :cond_0
    add-int/lit8 v2, v4, 0x1

    .line 21
    aget-byte v4, p2, v4

    if-lez v4, :cond_1

    .line 22
    iget-object v5, v0, Lcom/amap/api/col/l3/am;->d:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, v2, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v3

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result p1

    iput p1, v0, Lcom/amap/api/col/l3/am;->e:I

    add-int/lit8 v2, v2, 0x4

    if-lez p1, :cond_4

    .line 24
    new-array p1, p1, [I

    iput-object p1, v0, Lcom/amap/api/col/l3/am;->f:[I

    .line 25
    :goto_1
    iget p1, v0, Lcom/amap/api/col/l3/am;->e:I

    if-ge v1, p1, :cond_4

    .line 26
    iget-object p1, v0, Lcom/amap/api/col/l3/am;->f:[I

    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    aput v3, p1, v1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 27
    :cond_4
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->bo:Lcom/amap/api/col/l3/am;

    .line 28
    new-instance p1, Lcom/amap/api/col/l3/j$39;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/j$39;-><init>(Lcom/amap/api/col/l3/j;)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->Z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aH:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x3

    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/16 v2, 0x8

    .line 3
    iput v2, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    iput-object v3, v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const-string v4, "AMapDelegateImp"

    if-eqz v3, :cond_7

    if-eq v3, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iput-boolean v5, p0, Lcom/amap/api/col/l3/j;->aD:Z

    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aI:Z

    iget-boolean v3, p0, Lcom/amap/api/col/l3/j;->ai:Z

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ai:Z

    :cond_3
    iget-boolean v3, p0, Lcom/amap/api/col/l3/j;->ah:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ah:Z

    :cond_4
    iget-boolean v3, p0, Lcom/amap/api/col/l3/j;->aj:Z

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->aj:Z

    :cond_5
    iput-boolean v1, p0, Lcom/amap/api/col/l3/j;->ae:Z

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    if-eqz v3, :cond_6

    :try_start_0
    invoke-interface {v1, v3}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v3, "OnMarkerDragListener.onMarkerDragEnd"

    invoke-static {v1, v4, v3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    :cond_6
    new-instance v1, Lcom/amap/api/col/l3/j$10;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3/j$10;-><init>(Lcom/amap/api/col/l3/j;I)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    new-instance v1, Lcom/amap/api/col/l3/j$12;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3/j$12;-><init>(Lcom/amap/api/col/l3/j;)V

    const-wide/16 v6, 0x12c

    invoke-interface {v0, v1, v6, v7}, Lcom/amap/api/col/l3/v;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 9
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->A()V

    .line 10
    iget-boolean v1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->aC:Lcom/amap/api/col/l3/q;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/q;->a()V

    iput-boolean v5, p0, Lcom/amap/api/col/l3/j;->aD:Z

    iput-boolean v5, p0, Lcom/amap/api/col/l3/j;->aI:Z

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->stopAnimation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v1, Lcom/amap/api/col/l3/j$9;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/l3/j$9;-><init>(Lcom/amap/api/col/l3/j;I)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    .line 11
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->ae:Z

    if-eqz v0, :cond_a

    if-eqz v0, :cond_9

    .line 12
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    invoke-interface {v1}, Lcom/amap/api/col/l3/cp;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j;->ag:Lcom/amap/api/col/l3/cp;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IOverlayImage;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    invoke-virtual {p0, v0, p1, v3}, Lcom/amap/api/col/l3/j;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance p1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v6, v8

    iget-wide v8, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-wide v8, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v8, v10

    iget-wide v0, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v0

    invoke-direct {p1, v6, v7, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object p1, p0, Lcom/amap/api/col/l3/j;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->af:Lcom/amap/api/maps/model/Marker;

    invoke-interface {p1, v0}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    const-string v0, "onDragMarker"

    .line 13
    invoke-static {p1, v4, v0}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_2
    return v5

    .line 15
    :cond_a
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aD:Z

    if-eqz v0, :cond_b

    .line 16
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aC:Lcom/amap/api/col/l3/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/q;->a(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    if-eqz v0, :cond_c

    .line 19
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 21
    iput v1, v0, Landroid/os/Message;->what:I

    .line 22
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    return v5

    :cond_d
    :goto_4
    return v1
.end method

.method public final p()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/amap/api/col/l3/j;->aw:I

    return v0
.end method

.method public final postOnUIThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postQueueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method final q()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/v;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r()F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final reloadMap()V
    .locals 0

    return-void
.end method

.method public final removeGLOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->removeOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    :cond_0
    return-void
.end method

.method public final removecache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public final removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0xa29

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 4
    new-instance v0, Lcom/amap/api/col/l3/j$d;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/col/l3/j$d;-><init>(Lcom/amap/api/col/l3/j;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "removecache"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final renderSurface(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    invoke-interface {v0}, Lcom/amap/api/col/l3/v;->requestRender()V

    :cond_0
    return-void
.end method

.method public final resetMinMaxZoomPreference()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/af;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final resetRenderTime()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public final resetRenderTime(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 5
    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_1
    return-void
.end method

.method public final resetRenderTimeLong()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public final resetRenderTimeLongLong()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    .line 2
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public final s()Landroid/graphics/Point;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCenter(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final set3DBuildingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/j;->o(I)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/l3/j;->c(IZ)V

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/col/l3/j;->p(I)V

    return-void
.end method

.method public final setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aC:Lcom/amap/api/col/l3/q;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->I:Lcom/amap/api/maps/model/AMapGestureListener;

    .line 3
    iput-object p1, v0, Lcom/amap/api/col/l3/q;->d:Lcom/amap/api/maps/model/AMapGestureListener;

    :cond_0
    return-void
.end method

.method public final setCenterToPixel(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/j;->aa:Z

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/j;->aT:I

    .line 3
    iput p2, p0, Lcom/amap/api/col/l3/j;->aU:I

    .line 4
    iget-boolean p1, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result p1

    iget p2, p0, Lcom/amap/api/col/l3/j;->aT:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result p1

    iget p2, p0, Lcom/amap/api/col/l3/j;->aU:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget p2, p0, Lcom/amap/api/col/l3/j;->aT:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget p2, p0, Lcom/amap/api/col/l3/j;->aU:I

    invoke-virtual {p1, p2}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    .line 8
    new-instance p1, Lcom/amap/api/col/l3/j$36;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/j$36;-><init>(Lcom/amap/api/col/l3/j;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final setCustomMapStyleID(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleID(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->O:Z

    :cond_0
    return-void
.end method

.method public final setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStylePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->O:Z

    :cond_0
    return-void
.end method

.method public final setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->au:Lcom/amap/api/maps/CustomRenderer;

    return-void
.end method

.method public final setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomTextureResourcePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/amap/api/col/l3/am;

    iput-object p1, p0, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 5
    new-instance p1, Lcom/amap/api/col/l3/j$37;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3/j$37;-><init>(Lcom/amap/api/col/l3/j;)V

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setIndoorEnabled(Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v2, :cond_4

    .line 2
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setIndoorEnable(Z)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    if-eqz v1, :cond_0

    .line 4
    iget-object v3, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    const/16 v5, 0x402

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5
    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v10, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v10, :cond_1

    const/4 v11, 0x1

    const/16 v12, 0x402

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 7
    invoke-virtual/range {v10 .. v16}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v3

    goto :goto_0

    :cond_2
    const/high16 v3, 0x41980000    # 19.0f

    :goto_0
    iput v3, v2, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    .line 9
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/af;->isZoomControlsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v3, v0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    .line 11
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/af;->isIndoorSwitchEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    new-instance v3, Lcom/amap/api/col/l3/j$32;

    invoke-direct {v3, v0, v1}, Lcom/amap/api/col/l3/j$32;-><init>(Lcom/amap/api/col/l3/j;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 13
    :cond_4
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->bk:Lcom/amap/api/col/l3/j$a;

    iput-boolean v1, v2, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v2, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 15
    iput v1, v2, Lcom/amap/api/col/l3/j$a;->g:I

    :cond_5
    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->J:Lcom/amap/api/col/l3/ao;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/ao;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    :cond_1
    return-void
.end method

.method public final setLoadOfflineData(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/j$33;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3/j$33;-><init>(Lcom/amap/api/col/l3/j;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amap/api/col/l3/ap;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ey;->f()Lcom/amap/api/col/l3/ex;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/ex;->a(Z)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/ey;->f()Lcom/amap/api/col/l3/ex;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/ex;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "setLocationSource"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMapCustomEnable(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->az:Lcom/amap/api/col/l3/di;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/di;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->az:Lcom/amap/api/col/l3/di;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/di;->b()V

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->O:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/j;->b(Z[B)V

    :cond_3
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bd:Lcom/amap/api/col/l3/j$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 13
    iput-boolean p1, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    return-void
.end method

.method public final setMapLanguage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "en"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const-string v0, "zh_cn"

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/amap/api/col/l3/j;->at:I

    goto :goto_1

    .line 7
    :cond_3
    iget p1, p0, Lcom/amap/api/col/l3/j;->ao:I

    if-eq p1, v1, :cond_4

    .line 8
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/amap/api/col/l3/j;->setMapType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/16 p1, -0x2710

    .line 11
    iput p1, p0, Lcom/amap/api/col/l3/j;->at:I

    .line 12
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j;->b(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->R:Lcom/amap/api/col/l3/ae;

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/amap/api/col/l3/ae;->d:Lcom/amap/api/col/l3/de;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/de;->a(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    new-instance v3, Lcom/autonavi/ae/gmap/GLMapState;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    iget-object v4, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, v4, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v0}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v4

    iget-object p1, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v7, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v5, v6, v7, v8, v4}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/autonavi/amap/mapcore/IPoint;

    aput-object v0, p1, v1

    aput-object v4, p1, v2

    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMapTextEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aN:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/j$35;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3/j$35;-><init>(Lcom/amap/api/col/l3/j;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->bg:Lcom/amap/api/col/l3/j$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 6
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final setMapTextZIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/j;->at:I

    return-void
.end method

.method public final setMapType(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/j;->ao:I

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_3

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x4

    goto :goto_3

    :cond_2
    if-ne p1, v2, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x5

    goto :goto_3

    .line 2
    :cond_4
    :try_start_0
    iput v3, p0, Lcom/amap/api/col/l3/j;->ao:I

    goto :goto_0

    .line 3
    :goto_3
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v8}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleMode(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v9}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleTime(I)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v10}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleState(I)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    .line 7
    invoke-direct/range {v6 .. v13}, Lcom/amap/api/col/l3/j;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {p1, v3}, Lcom/amap/api/col/l3/af;->setLogoEnable(Z)V

    goto :goto_4

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "zh_cn"

    .line 11
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->setMapLanguage(Ljava/lang/String;)V

    .line 12
    :cond_6
    invoke-virtual {p0, v3, v8, v9, v10}, Lcom/amap/api/col/l3/j;->a(IIII)V

    .line 13
    :goto_4
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "setMaptype"

    .line 14
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMaskLayerParams(IIIIIJ)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->av:Lcom/amap/api/col/l3/aa;

    if-eqz v0, :cond_3

    int-to-float v0, p4

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p5, v1, :cond_0

    .line 2
    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-direct {v1, v0, v2}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/j$38;

    invoke-direct {v0, p0, p5}, Lcom/amap/api/col/l3/j$38;-><init>(Lcom/amap/api/col/l3/j;I)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iput p5, p0, Lcom/amap/api/col/l3/j;->aw:I

    .line 6
    new-instance v1, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    invoke-direct {v1, v2, v0}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    float-to-double v2, v0

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double p5, v2, v4

    if-lez p5, :cond_1

    .line 7
    iget-object p5, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz p5, :cond_2

    .line 8
    invoke-virtual {p5}, Lcom/amap/api/col/l3/ey;->h()Lcom/amap/api/col/l3/fa;

    move-result-object p5

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p5, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz p5, :cond_2

    .line 10
    invoke-virtual {p5}, Lcom/amap/api/col/l3/ey;->h()Lcom/amap/api/col/l3/fa;

    move-result-object p5

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    :goto_0
    new-instance p5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, p5}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 12
    invoke-virtual {v1, p6, p7}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->setDuration(J)V

    .line 13
    iget-object p5, p0, Lcom/amap/api/col/l3/j;->av:Lcom/amap/api/col/l3/aa;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/amap/api/col/l3/aa;->a(IIII)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->av:Lcom/amap/api/col/l3/aa;

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3/aa;->a(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMaxZoomLevel(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMaxZoomLevel(F)V

    return-void
.end method

.method public final setMinZoomLevel(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    return-void
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->Q:Lcom/amap/api/col/l3/ey;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->f()Lcom/amap/api/col/l3/ex;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->F:Lcom/amap/api/col/l3/n;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ex;->a(Z)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Lcom/amap/api/col/l3/cy;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/cy;-><init>(Lcom/amap/api/col/l3/u;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/col/l3/cy;->b()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ex;->a(Z)V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->N:Lcom/amap/api/col/l3/af;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/af;->setMyLocationButtonEnabled(Z)V

    .line 15
    :cond_5
    iput-boolean p1, p0, Lcom/amap/api/col/l3/j;->T:Z

    .line 16
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImp"

    const-string v1, "setMyLocationEnabled"

    .line 17
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setMyLocationRotateAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/cy;->a(F)V

    :cond_0
    return-void
.end method

.method public final setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/amap/api/col/l3/cy;

    iget-object v1, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/cy;-><init>(Lcom/amap/api/col/l3/u;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/amap/api/col/l3/ap;

    if-eqz v1, :cond_3

    .line 8
    check-cast v0, Lcom/amap/api/col/l3/ap;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/ap;->a(J)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ad:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/col/l3/ap;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ap;->a(I)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/cy;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V

    :cond_4
    return-void
.end method

.method public final setMyLocationType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/cy;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/cy;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 4
    iget-object p1, p0, Lcom/amap/api/col/l3/j;->ac:Lcom/amap/api/col/l3/cy;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/cy;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3/j;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    :cond_0
    return-void
.end method

.method public final setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/amap/api/col/l3/j;->V:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, v0, Lcom/amap/api/col/l3/j;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 3
    iget-boolean v2, v0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 4
    iget-object v3, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v4, 0x1

    const/16 v5, 0x899

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 5
    iget-object v10, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v11, 0x1

    const/16 v12, 0x89a

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v13

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v15

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v16

    .line 8
    invoke-virtual/range {v10 .. v16}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 9
    iget-object v2, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    const/16 v4, 0x89b

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getRatio()F

    move-result v1

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v1, v1, v5

    float-to-int v5, v1

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_1
    return-void
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-void
.end method

.method public final setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    return-void
.end method

.method public final setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    return-void
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->y:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    return-void
.end method

.method public final setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-void
.end method

.method public final setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    return-void
.end method

.method public final setOnMultiPointClickListener(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aY:Lcom/amap/api/col/l3/at;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/at;->a(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V

    :cond_0
    return-void
.end method

.method public final setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    return-void
.end method

.method public final setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-void
.end method

.method public final setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    return-void
.end method

.method public final setRenderFps(I)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x28

    .line 1
    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3/j;->ax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final setRenderMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/j;->W:I

    .line 3
    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/v;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public final setRunLowFrame(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/j;->A()V

    :cond_0
    return-void
.end method

.method public final setTrafficEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j;->V:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/col/l3/j$31;

    invoke-direct {v0, p0, p1, p1}, Lcom/amap/api/col/l3/j$31;-><init>(Lcom/amap/api/col/l3/j;ZZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/j;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aZ:Lcom/amap/api/col/l3/j$a;

    iput-boolean p1, v0, Lcom/amap/api/col/l3/j$a;->c:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcom/amap/api/col/l3/j$a;->b:Z

    .line 5
    iput p1, v0, Lcom/amap/api/col/l3/j$a;->g:I

    return-void
.end method

.method public final setVisibilityEx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->P:Lcom/amap/api/col/l3/v;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/amap/api/col/l3/v;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final setZOrderOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final setZoomScaleParam(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/col/l3/j;->aF:F

    return-void
.end method

.method public final stopAnimation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->interruptAnimation()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/j;->resetRenderTime()V

    return-void
.end method

.method public final t()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/amap/api/col/l3/j;->aF:F

    return v0
.end method

.method public final u()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final v()[F
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->n:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getViewMatrix([F)V

    .line 5
    iget-object v1, p0, Lcom/amap/api/col/l3/j;->o:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    .line 6
    iget-object v6, p0, Lcom/amap/api/col/l3/j;->n:[F

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/amap/api/col/l3/j;->o:[F

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/j;->m:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->m:[F

    return-object v0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->m:[F

    return-object v0
.end method

.method public final w()Lcom/amap/api/col/l3/dg;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j;->aW:Lcom/amap/api/col/l3/dg;

    return-object v0
.end method
