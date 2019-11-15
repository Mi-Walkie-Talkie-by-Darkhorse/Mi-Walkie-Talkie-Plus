.class public Lcom/amap/api/mapcore/util/a;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/db$a;
.implements Lcom/amap/api/mapcore/util/l;
.implements Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;
.implements Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/a$b;,
        Lcom/amap/api/mapcore/util/a$c;,
        Lcom/amap/api/mapcore/util/a$d;,
        Lcom/amap/api/mapcore/util/a$a;
    }
.end annotation


# instance fields
.field private A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

.field private B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

.field private C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

.field private D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

.field private E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

.field private F:Lcom/amap/api/mapcore/util/e;

.field private G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

.field private H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

.field private I:Lcom/amap/api/maps/model/AMapGestureListener;

.field private J:Lcom/amap/api/mapcore/util/af;

.field private K:Lcom/amap/api/mapcore/util/ct;

.field private L:Lcom/amap/api/maps/UiSettings;

.field private M:Lcom/amap/api/mapcore/util/n;

.field private final N:Lcom/amap/api/mapcore/util/w;

.field private O:Z

.field private final P:Lcom/amap/api/mapcore/util/m;

.field private Q:Lcom/amap/api/mapcore/util/er;

.field private final R:Lcom/amap/api/mapcore/util/v;

.field private final S:Lcom/amap/api/mapcore/util/i;

.field private T:Z

.field private U:I

.field private V:Z

.field private W:I

.field private X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

.field private Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

.field private Z:Z

.field protected a:Z

.field private aA:Lcom/amap/api/mapcore/util/db;

.field private aB:Lcom/autonavi/ae/gmap/GLMapRender;

.field private aC:Lcom/amap/api/mapcore/util/h;

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

.field private aV:Lcom/amap/api/mapcore/util/a$b;

.field private aW:Lcom/amap/api/mapcore/util/cx;

.field private aX:Lcom/amap/api/mapcore/util/j;

.field private aY:Lcom/amap/api/mapcore/util/ak;

.field private aZ:Lcom/amap/api/mapcore/util/a$a;

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/amap/api/mapcore/util/cp;

.field private ad:Lcom/amap/api/maps/LocationSource;

.field private ae:Z

.field private af:Lcom/amap/api/maps/model/Marker;

.field private ag:Lcom/amap/api/mapcore/util/cg;

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

.field private final av:Lcom/amap/api/mapcore/util/r;

.field private aw:I

.field private ax:I

.field private ay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private az:Lcom/amap/api/mapcore/util/cz;

.field protected final b:Lcom/amap/api/mapcore/util/q;

.field private ba:Lcom/amap/api/mapcore/util/a$a;

.field private bb:Lcom/amap/api/mapcore/util/a$a;

.field private bc:Lcom/amap/api/mapcore/util/a$a;

.field private bd:Lcom/amap/api/mapcore/util/a$a;

.field private be:Lcom/amap/api/mapcore/util/a$a;

.field private bf:Lcom/amap/api/mapcore/util/a$a;

.field private bg:Lcom/amap/api/mapcore/util/a$a;

.field private bh:Lcom/amap/api/mapcore/util/a$a;

.field private bi:Lcom/amap/api/mapcore/util/a$a;

.field private bj:Lcom/amap/api/mapcore/util/a$a;

.field private bk:Lcom/amap/api/mapcore/util/a$a;

.field private bl:Ljava/lang/Runnable;

.field private bm:Lcom/amap/api/mapcore/util/a$a;

.field private bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field private bo:Lcom/amap/api/mapcore/util/ad;

.field private bp:[Lcom/autonavi/amap/mapcore/IPoint;

.field protected c:Lcom/autonavi/amap/mapcore/MapConfig;

.field protected d:Lcom/amap/api/mapcore/util/ad;

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
.method public constructor <init>(Lcom/amap/api/mapcore/util/m;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->K:Lcom/amap/api/mapcore/util/ct;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->a:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->O:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->T:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    iput v3, p0, Lcom/amap/api/mapcore/util/a;->W:I

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    new-instance v0, Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ab:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ae:Z

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ah:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ai:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aj:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ak:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->al:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->an:Landroid/graphics/Rect;

    iput v1, p0, Lcom/amap/api/mapcore/util/a;->ao:I

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ar:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->as:Z

    iput v3, p0, Lcom/amap/api/mapcore/util/a;->at:I

    iput v2, p0, Lcom/amap/api/mapcore/util/a;->aw:I

    iput v2, p0, Lcom/amap/api/mapcore/util/a;->ax:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aD:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->aE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->aF:F

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aG:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aH:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aI:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aJ:Z

    iput v3, p0, Lcom/amap/api/mapcore/util/a;->aK:I

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->aL:Ljavax/microedition/khronos/opengles/GL10;

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aO:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aP:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aQ:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aR:Ljava/util/concurrent/locks/Lock;

    iput v3, p0, Lcom/amap/api/mapcore/util/a;->aS:I

    new-instance v0, Lcom/amap/api/mapcore/util/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/a$1;-><init>(Lcom/amap/api/mapcore/util/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/mapcore/util/a$11;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$11;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aZ:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$18;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$18;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ba:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$27;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$27;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bb:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$34;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$34;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$42;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$42;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bd:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$43;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$43;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->be:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$44;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$44;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bf:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$45;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$45;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bg:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$2;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bh:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$3;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$3;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bi:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$4;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$4;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bj:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$5;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$5;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bk:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/amap/api/mapcore/util/a$6;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$6;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bl:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/mapcore/util/a$7;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$7;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bm:Lcom/amap/api/mapcore/util/a$a;

    new-instance v0, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->j:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->k:Landroid/graphics/Rect;

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->l:Ljava/lang/String;

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->bo:Lcom/amap/api/mapcore/util/ad;

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->m:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->n:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->o:[F

    iput-object v4, p0, Lcom/amap/api/mapcore/util/a;->bp:[Lcom/autonavi/amap/mapcore/IPoint;

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->p:[F

    const-string v0, "precision highp float;\nattribute vec3 aVertex;//\u9876\u70b9\u6570\u7ec4,\u4e09\u7ef4\u5750\u6807\nuniform mat4 aMVPMatrix;//mvp\u77e9\u9635\nvoid main(){\n  gl_Position = aMVPMatrix * vec4(aVertex, 1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->q:Ljava/lang/String;

    const-string v0, "//\u6709\u989c\u8272 \u6ca1\u6709\u7eb9\u7406\nprecision highp float;\nvoid main(){\n  gl_FragColor = vec4(1.0,0,0,1.0);\n}"

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->r:Ljava/lang/String;

    iput v2, p0, Lcom/amap/api/mapcore/util/a;->s:I

    iput-object p2, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/amap/mapcore/AEUtil;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/mapcore/util/dw;->a()Lcom/amap/api/mapcore/util/dw;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dw;->a(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/di;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/mapcore/util/h;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/h;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;-><init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/GLMapRender;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/m;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->g:I

    iget v2, p0, Lcom/amap/api/mapcore/util/a;->h:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->g:I

    iget v2, p0, Lcom/amap/api/mapcore/util/a;->h:I

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/amap/api/mapcore/util/a;->a(ILandroid/graphics/Rect;II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->U:I

    new-instance v0, Lcom/amap/api/mapcore/util/w;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/w;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    new-instance v0, Lcom/amap/api/mapcore/util/er;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/er;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->e()Lcom/amap/api/mapcore/util/ep;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/a$c;

    invoke-direct {v1, p0, v4}, Lcom/amap/api/mapcore/util/a$c;-><init>(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/mapcore/util/a$1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a(Lcom/amap/api/mapcore/util/ep$a;)V

    new-instance v0, Lcom/amap/api/mapcore/util/a$b;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$b;-><init>(Lcom/amap/api/mapcore/util/a;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aV:Lcom/amap/api/mapcore/util/a$b;

    new-instance v0, Lcom/amap/api/mapcore/util/i;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/i;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    new-instance v0, Lcom/amap/api/mapcore/util/v;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/v;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    new-instance v0, Lcom/amap/api/mapcore/util/q;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/q;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapCoreListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, v3}, Lcom/amap/api/mapcore/util/m;->setRenderMode(I)V

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aG:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;)V

    new-instance v0, Lcom/amap/api/mapcore/util/t;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/t;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->M:Lcom/amap/api/mapcore/util/n;

    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/e;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->F:Lcom/amap/api/mapcore/util/e;

    new-instance v0, Lcom/amap/api/mapcore/util/ct;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore/util/ct;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->K:Lcom/amap/api/mapcore/util/ct;

    new-instance v0, Lcom/amap/api/mapcore/util/af;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/mapcore/util/ae;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->K:Lcom/amap/api/mapcore/util/ct;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/af;->b(Lcom/amap/api/mapcore/util/ae;)V

    new-instance v0, Lcom/amap/api/mapcore/util/r;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/r;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->av:Lcom/amap/api/mapcore/util/r;

    new-instance v0, Lcom/amap/api/mapcore/util/f;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/f;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aq:Ljava/lang/Thread;

    new-instance v0, Lcom/amap/api/mapcore/util/ag;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    new-instance v0, Lcom/amap/api/mapcore/util/ak;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ak;-><init>(Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    new-instance v0, Lcom/amap/api/mapcore/util/cx;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/cx;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aW:Lcom/amap/api/mapcore/util/cx;

    new-instance v0, Lcom/amap/api/mapcore/util/j;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/j;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    new-instance v0, Lcom/amap/api/mapcore/util/cz;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore/util/cz;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    new-instance v0, Lcom/amap/api/mapcore/util/db;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/db;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/db;->a(Lcom/amap/api/mapcore/util/db$a;)V

    return-void
.end method

.method static synthetic A(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/listener/MapWidgetListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    return-object v0
.end method

.method private A()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ar:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aq:Ljava/lang/Thread;

    const-string v1, "AuthThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ar:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private B()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Lcom/amap/api/maps/model/LatLngBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v3, v0, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget-object v4, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v0, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v2, 0x1

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    goto :goto_0
.end method

.method private C()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->y:Lcom/amap/api/maps/AMap$OnMapClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->F:Lcom/amap/api/mapcore/util/e;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->aK:I

    return p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/mapcore/util/cx;)Lcom/amap/api/mapcore/util/cx;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->aW:Lcom/amap/api/mapcore/util/cx;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;III)Lcom/amap/api/maps/model/Poi;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/a;->b(III)Lcom/amap/api/maps/model/Poi;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->ax:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->ax:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isWorldMapEnable()Z

    move-result v0

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->g(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setWorldMapEnable(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAction(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aI:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ae:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/cg;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/cg;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Lcom/amap/api/mapcore/util/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v6, v8

    iget-wide v8, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-wide v8, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v8, v10

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double v2, v8, v2

    invoke-direct {v0, v6, v7, v2, v3}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps/model/Marker;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/a;->b(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->a(Lcom/amap/api/maps/model/CameraPosition;)V

    return-void
.end method

.method private a(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->b(Lcom/amap/api/maps/model/CameraPosition;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/a;->d(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->am:Z

    invoke-virtual {p0, v2, v0}, Lcom/amap/api/mapcore/util/a;->d(IZ)V

    goto :goto_0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->al:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v3

    invoke-static {v1, v1, v2, v3}, Lcom/amap/api/mapcore/util/ee;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->al:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a;->aJ:Z

    return p1
.end method

.method private a(Lcom/amap/api/maps/model/LatLngBounds;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/a;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->aw:I

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnCameraChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-object v0
.end method

.method private b(III)Lcom/amap/api/maps/model/Poi;
    .locals 11

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/a;->a(IIII)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;

    move-object v8, v0

    :goto_1
    if-eqz v8, :cond_1

    iget v0, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    int-to-long v0, v0

    iget v2, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    int-to-long v2, v2

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v9

    new-instance v0, Lcom/amap/api/maps/model/Poi;

    iget-object v10, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v9, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v9, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v2, v8, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    invoke-direct {v0, v10, v1, v2}, Lcom/amap/api/maps/model/Poi;-><init>(Ljava/lang/String;Lcom/amap/api/maps/model/LatLng;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    move-object v8, v7

    goto :goto_1
.end method

.method private b(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setSrvViewStateBoolValue(IIZ)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/a$13;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$13;-><init>(Lcom/amap/api/mapcore/util/a;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a;->ak:Z

    return p1
.end method

.method private b(Lcom/amap/api/maps/model/CameraPosition;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v3, 0x40e00000    # 7.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p1, Lcom/amap/api/maps/model/CameraPosition;->isAbroad:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dy;->a([Lcom/autonavi/amap/mapcore/IPoint;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnMapLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-object v0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/a$14;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/a$14;-><init>(Lcom/amap/api/mapcore/util/a;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    iput-boolean v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->isUseAnchor:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->anchorX:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->anchorY:I

    :cond_0
    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    :cond_1
    iget v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v0

    iput v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iput-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/MapConfig;

    return-void
.end method

.method private c(II)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getSrvViewStateBoolValue(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a;->as:Z

    return p1
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnMapTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-object v0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/mapcore/util/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    new-instance v2, Lcom/amap/api/maps/model/Polyline;

    check-cast v0, Lcom/amap/api/mapcore/util/cl;

    invoke-direct {v2, v0}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnPolylineClickListener;->onPolylineClick(Lcom/amap/api/maps/model/Polyline;)V

    :cond_0
    return v6
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/er;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    return-object v0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/q;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->d()Lcom/amap/api/mapcore/util/cg;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v1, v7}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->g()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, v7}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cg;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onMarkerTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/amap/api/mapcore/util/a;->a(Lcom/amap/api/mapcore/util/cg;)V

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/cg;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v7}, Lcom/amap/api/mapcore/util/cg;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/util/a;->a(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {v6}, Lcom/amap/api/mapcore/util/aa;->a(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1, v7}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cg;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$onMapPrintScreenListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    return-object v0
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/amap/api/mapcore/util/a;->a(IILcom/autonavi/amap/mapcore/IPoint;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ak;->a(Lcom/autonavi/amap/mapcore/IPoint;)Z

    move-result v0

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnMapScreenShotListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    return-object v0
.end method

.method private g(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/af;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/q;->d()Lcom/amap/api/mapcore/util/cg;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/amap/api/maps/model/Marker;

    invoke-direct {v2, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps/model/Marker;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(IZ)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7dc

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aJ:Z

    return v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/v;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ak:Z

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnPOIClickListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-object v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnMapClickListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->y:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/af;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    return-object v0
.end method

.method static synthetic n(Lcom/amap/api/mapcore/util/a;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aT:I

    return v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/a;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aU:I

    return v0
.end method

.method static synthetic p(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    return-object v0
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    return v0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/util/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    return v0
.end method

.method static synthetic s(Lcom/amap/api/mapcore/util/a;)Lcom/autonavi/ae/gmap/GLMapRender;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    return-object v0
.end method

.method static synthetic t(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/model/MyTrafficStyle;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    return-object v0
.end method

.method static synthetic u(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/a$b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aV:Lcom/amap/api/mapcore/util/a$b;

    return-object v0
.end method

.method private u(I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h;->a()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aD:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aI:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->stopAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/amap/api/mapcore/util/a$9;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$9;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic v(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/ad;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bo:Lcom/amap/api/mapcore/util/ad;

    return-object v0
.end method

.method private v(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aD:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aI:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ai:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ai:Z

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ah:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ah:Z

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aj:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aj:Z

    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ae:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    :cond_3
    new-instance v0, Lcom/amap/api/mapcore/util/a$10;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$10;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    new-instance v1, Lcom/amap/api/mapcore/util/a$12;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/a$12;-><init>(Lcom/amap/api/mapcore/util/a;)V

    const-wide/16 v2, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/m;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "OnMarkerDragListener.onMarkerDragEnd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic w(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/j;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    return-object v0
.end method

.method private w()Lcom/amap/api/maps/model/LatLng;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private w(I)V
    .locals 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v0

    if-eqz v0, :cond_0

    aget v2, v0, v4

    const/4 v1, 0x1

    aget v3, v0, v1

    aget v4, v0, v5

    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/amap/api/mapcore/util/a;->c(II)Z

    move-result v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v6, p0, Lcom/amap/api/mapcore/util/a;->g:I

    iget v7, p0, Lcom/amap/api/mapcore/util/a;->h:I

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->loadStartResource(IIIIZII)V

    return-void

    :cond_0
    move v3, v4

    move v2, v4

    goto :goto_0
.end method

.method static synthetic x(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/cx;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aW:Lcom/amap/api/mapcore/util/cx;

    return-object v0
.end method

.method private declared-synchronized x()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->e()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic y(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    return-object v0
.end method

.method private y()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/amap/api/mapcore/util/l;Z)[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/amap/mapcore/FPoint;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getPixel20Bound(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/autonavi/amap/mapcore/Rectangle;->updateRect(Landroid/graphics/Rect;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapPerPixelUnitLength(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic z(Lcom/amap/api/mapcore/util/a;)Lcom/amap/api/mapcore/util/w;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    return-object v0
.end method

.method private z()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->d()Lcom/amap/api/mapcore/util/en;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/en;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ab:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->ab:Z

    invoke-virtual {p0, v3}, Lcom/amap/api/mapcore/util/a;->g(Z)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/mapcore/util/a$16;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/a$16;-><init>(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/mapcore/util/en;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/graphics/Rect;II)I
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isEngineCreated(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->createEngineWithFrame(ILandroid/graphics/Rect;II)V

    new-instance v2, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    invoke-direct {v2, v1, p0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setOvelayBundle(ILcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/a;->a(IIZ)V

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/a;->w(I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapAngle(IF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapZoom(IF)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapCenter(III)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->setCameraDegree(IF)V

    :goto_0
    return v1

    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/a;->a(IIIIIII)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithGestureInfo(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/interfaces/IMarkerAction;Landroid/graphics/Rect;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/s;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    monitor-enter v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->e()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps/model/LatLng;FFF)Lcom/amap/api/maps/model/LatLngBounds;
    .locals 12

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v7

    if-lez v0, :cond_0

    if-lez v7, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-static {v1, p2}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/MapConfig;F)F

    move-result v1

    new-instance v9, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v9, v2, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v10, v11, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    iget v3, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v4, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v9, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {v9, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-virtual {v9}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v9, v1, v2, v10}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {p0, v9, v0, v7, v10}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v10, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v10, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v10}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-virtual {v9}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    invoke-static {}, Lcom/amap/api/maps/model/LatLngBounds;->builder()Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/autonavi/ae/gmap/GLMapEngine;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    return-object v0
.end method

.method public a(IIII)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getLabelBuffer(IIII)[B

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v0

    const/4 v3, 0x4

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_8

    new-instance v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;

    invoke-direct {v6}, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;-><init>()V

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    add-int/lit8 v3, v3, 0x4

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v7

    add-int/lit8 v3, v3, 0x4

    iput v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->x:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/m;->getHeight()I

    move-result v1

    sub-int/2addr v1, v7

    iput v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->y:I

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v1

    iput v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20X:I

    add-int/lit8 v1, v3, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->pixel20Y:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->type:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v5, v1}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->mSublayerId:I

    add-int/lit8 v3, v1, 0x4

    aget-byte v1, v5, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->mIsFouces:Z

    add-int/lit8 v7, v3, 0x1

    aget-byte v1, v5, v7

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    :goto_4
    add-int/lit8 v1, v7, 0x14

    add-int/lit8 v3, v1, 0x1

    aget-byte v7, v5, v1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v7, :cond_7

    invoke-static {v5, v3}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getShort([BI)S

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const-string v3, ""

    const/4 v1, 0x0

    :goto_6
    const/16 v8, 0x14

    if-ge v1, v8, :cond_5

    add-int v8, v1, v7

    aget-byte v8, v5, v8

    if-nez v8, :cond_6

    :cond_5
    iput-object v3, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->poiid:Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v8, v1, v7

    aget-byte v8, v5, v8

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/autonavi/ae/gmap/glinterface/MapLabelItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public a(DDLcom/autonavi/amap/mapcore/FPoint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p5}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToMapPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public a(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 1

    invoke-static {p3, p4, p1, p2, p5}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    return-void
.end method

.method public a(FFLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->mapToP20Point(IFFLandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/er;->a(IF)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aS:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/amap/api/mapcore/util/a;->aS:I

    goto :goto_0
.end method

.method public a(IIIIIII)V
    .locals 9

    new-instance v0, Lcom/amap/api/mapcore/util/a$30;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/mapcore/util/a$30;-><init>(Lcom/amap/api/mapcore/util/a;IIIIIII)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x805

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7dd

    const/4 v6, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/amap/api/mapcore/util/a$19;

    move-object v1, p0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amap/api/mapcore/util/a$19;-><init>(Lcom/amap/api/mapcore/util/a;ZIIIIZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    iput p2, v0, Lcom/amap/api/mapcore/util/a$a;->d:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    iput p3, v0, Lcom/amap/api/mapcore/util/a$a;->e:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    iput p4, v0, Lcom/amap/api/mapcore/util/a$a;->f:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(IILandroid/graphics/PointF;)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToScreenPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/FPoint;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToMapPoint(IIILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public a(IILcom/autonavi/amap/mapcore/IPoint;)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToP20Point(IFFLandroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/a$29;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/a$29;-><init>(Lcom/amap/api/mapcore/util/a;IIZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ah:Z

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->m(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/q;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore/util/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/cg;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/maps/model/Marker;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/cg;->b()Lcom/amap/api/maps/model/LatLng;

    move-result-object v7

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v6

    iget-wide v2, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore/util/a;->b(DDLcom/autonavi/amap/mapcore/IPoint;)V

    iget v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    add-int/lit8 v1, v1, -0x3c

    iput v1, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget v2, v6, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v3, v6, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/mapcore/util/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v8, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    add-double/2addr v4, v8

    iget-wide v8, v7, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v8

    iget-wide v8, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v10, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    add-double/2addr v8, v10

    iget-wide v10, v7, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    invoke-direct {v2, v4, v5, v8, v9}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->ag:Lcom/amap/api/mapcore/util/cg;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/mapcore/util/cg;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->af:Lcom/amap/api/maps/model/Marker;

    invoke-interface {v0, v2}, Lcom/amap/api/maps/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps/model/Marker;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ae:Z

    invoke-virtual {v6}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/amap/api/mapcore/util/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps/model/LatLng;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ai:Z

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onLongPress"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;)V
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    iput-boolean v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isUseAnchor:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iput v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorX:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iput v0, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->anchorY:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/w;->isGestureScaleByMapCenter()Z

    move-result v3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v5

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapEngine;->addGestureMessage(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(ILjavax/microedition/khronos/opengles/GL10;II)V
    .locals 10

    const/4 v0, 0x3

    const/4 v6, 0x2

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/amap/api/mapcore/util/a;->aQ:Z

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/amap/api/mapcore/util/a;->a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_0
    iput p3, p0, Lcom/amap/api/mapcore/util/a;->g:I

    iput p4, p0, Lcom/amap/api/mapcore/util/a;->h:I

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/a;->as:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/a;->an:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v3, 0x64

    const/16 v2, 0x78

    if-gt v1, v2, :cond_11

    move v6, v8

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x803

    mul-float v1, v5, v7

    float-to-int v4, v1

    mul-float v1, v5, v7

    float-to-int v5, v1

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    int-to-float v0, v3

    div-float/2addr v0, v7

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->aF:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aF:F

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapZoomScale(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p3}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapWidth(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p4}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3e9

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aG:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x76c

    const/16 v4, 0xf

    move v1, p1

    move v3, v8

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_1
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/a;->c(II)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fd

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fe

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3ff

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x402

    move v1, v8

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/a;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7da

    move v1, p1

    move v3, v8

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x405

    const/16 v3, 0x11

    move v1, p1

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    invoke-direct {p0, p1, v9}, Lcom/amap/api/mapcore/util/a;->h(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v1, p1

    move v2, v9

    move v3, v9

    move v4, p3

    move v5, p4

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->changeSurface(IIIIIII)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aT:I

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aU:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    shr-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    shr-int/lit8 v1, p4, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x44c

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v4

    move v1, p1

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/a;->a:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bj:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bj:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->be:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->be:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bc:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ba:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ba:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bd:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bd:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aZ:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aZ:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bf:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bf:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bh:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bh:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bi:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bi:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bm:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bm:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bk:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bk:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bb:Lcom/amap/api/mapcore/util/a$a;

    iget-boolean v0, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bb:Lcom/amap/api/mapcore/util/a$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a$a;->run()V

    :cond_e
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p2, p3, p4}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_f
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->bl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void

    :cond_11
    const/16 v2, 0xa0

    if-gt v1, v2, :cond_13

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_12

    const/16 v0, 0x78

    :goto_5
    move v6, v8

    move v3, v0

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x64

    goto :goto_5

    :cond_13
    const/16 v2, 0xf0

    if-gt v1, v2, :cond_15

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_14

    const/16 v3, 0x3c

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x46

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x140

    if-gt v1, v2, :cond_16

    const/16 v3, 0x32

    move v6, v0

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_17

    const/16 v3, 0x32

    move v6, v0

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x28

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x76c

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fd

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x3fe

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto/16 :goto_2

    :cond_1a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x7da

    move v1, p1

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aT:I

    add-int/lit8 v2, p3, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aU:I

    add-int/lit8 v2, p4, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    goto/16 :goto_4
.end method

.method public declared-synchronized a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/a;->aL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->g:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aQ:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->initConnectionManager()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->w(I)V

    new-instance v0, Lcom/amap/api/mapcore/util/a$28;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$28;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1f01

    :try_start_1
    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getNativeInstance()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/ae/gmap/GLMapState;Z)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/j;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->A()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p2, p3}, Lcom/amap/api/maps/CustomRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->s()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/a;->c(II)Z

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/util/a$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/mapcore/util/a$8;-><init>(Lcom/amap/api/mapcore/util/a;IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ba:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ba:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ba:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public a(Landroid/location/Location;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->b()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "showMyLocationOverlay"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/mapcore/util/cp;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cp;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cp;->a(Landroid/location/Location;)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    :cond_6
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/cg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/mapcore/util/cg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/s;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s;->f()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lcom/autonavi/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p1, v1, v2, v0}, Lcom/autonavi/ae/gmap/GLMapState;->screenToP20Point(FFLandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p4, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v2, p4, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public a(Lcom/autonavi/ae/gmap/listener/MapWidgetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    return-void
.end method

.method public a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/amap/api/mapcore/util/aa;->c()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->geoPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->zoom:F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->bearing:F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->tilt:F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessage()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_1

    :cond_3
    move-object p1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v5, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    iput-boolean v5, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->isChangeFinished:Z

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V

    goto :goto_0
.end method

.method public a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p4, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    iput-wide p2, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mDuration:J

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    iget-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->mCallback:Lcom/amap/api/maps/AMap$CancelableCallback;

    invoke-interface {v0}, Lcom/amap/api/maps/AMap$CancelableCallback;->onFinish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->interruptAnimation()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->c(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dg;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->setCustomTextureResourcePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/mapcore/util/dg;->c()[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/a;->a([Lcom/autonavi/ae/gmap/style/StyleItem;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->b(Z)V

    :cond_0
    return-void
.end method

.method protected a(ZLcom/amap/api/maps/model/CameraPosition;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangedCounter()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetChangedCounter()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->I:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->I:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-interface {v0}, Lcom/amap/api/maps/model/AMapGestureListener;->onMapStable()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    invoke-interface {v0, p2}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "AMapDelegateImp"

    const-string v2, "cameraChangeFinish"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public a(Z[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/a;->a(Z[BZ)V

    return-void
.end method

.method public a(Z[BZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    if-nez p1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/w;->setLogoEnable(Z)V

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore/util/a;->g(IZ)V

    new-instance v2, Lcom/amap/api/mapcore/util/df;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/df;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomTextureResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v1

    :cond_0
    if-eqz p2, :cond_8

    invoke-virtual {v2, p2, v6}, Lcom/amap/api/mapcore/util/df;->a([BZ)Lcom/amap/api/mapcore/util/dg;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dg;->c()[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object v7

    move-object v0, v7

    :goto_1
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;Z)Lcom/amap/api/mapcore/util/dg;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dg;->c()[Lcom/autonavi/ae/gmap/style/StyleItem;

    move-result-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/df;->a()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/df;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomBackgroundColor(I)V

    :cond_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dg;->d()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dg;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/db;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->a(Lcom/amap/api/mapcore/util/dg;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/db;->b()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0, p3}, Lcom/amap/api/mapcore/util/a;->a([Lcom/autonavi/ae/gmap/style/StyleItem;Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1, v6}, Lcom/amap/api/mapcore/util/a;->g(IZ)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v4

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    goto :goto_2

    :cond_7
    move-object v0, v7

    goto :goto_1

    :cond_8
    move-object v0, v7

    move-object v1, v7

    goto :goto_1
.end method

.method protected a([Lcom/autonavi/ae/gmap/style/StyleItem;Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    :cond_0
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v1

    move v6, v1

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ed;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/ed;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public a(III)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->b(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v2, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMaxZoomLevel(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/aa;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isZoomInByScreenCenter()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->j:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->j:Landroid/graphics/Point;

    iput p3, v0, Landroid/graphics/Point;->y:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->j:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/aa;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/aa;->a(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onDoubleTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addArc(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/maps/model/Arc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/ArcOptions;)Lcom/amap/api/mapcore/util/cd;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Arc;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Arc;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IArc;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/mapcore/util/ce;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Circle;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Circle;-><init>(Lcom/autonavi/amap/mapcore/interfaces/ICircle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addCrossVector(Lcom/amap/api/maps/model/CrossOverlayOptions;)Lcom/amap/api/maps/model/CrossOverlay;
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->t()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getAttribute()Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->addOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CrossOverlayOptions;->getRes()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;->resumeMarker(Landroid/graphics/Bitmap;)V

    :cond_3
    new-instance v0, Lcom/amap/api/maps/model/CrossOverlay;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/maps/model/CrossOverlay;-><init>(Lcom/amap/api/maps/model/CrossOverlayOptions;Lcom/autonavi/ae/gmap/gloverlay/CrossVectorOverlay;)V

    goto :goto_0
.end method

.method public addGroundOverlay(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/maps/model/GroundOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/GroundOverlayOptions;)Lcom/amap/api/mapcore/util/cf;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/GroundOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/GroundOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IGroundOverlay;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method public addMarkers(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/MarkerOptions;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/q;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public addMultiPointOverlay(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/amap/api/maps/model/MultiPointOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ak;->a(Lcom/amap/api/maps/model/MultiPointOverlayOptions;)Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/MultiPointOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/MultiPointOverlay;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMultiPointOverlay;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addNaviRouteOverlay()Lcom/amap/api/maps/model/RouteOverlay;
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->t()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;-><init>(ILandroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V

    new-instance v0, Lcom/amap/api/maps/model/RouteOverlay;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/RouteOverlay;-><init>(Lcom/autonavi/ae/gmap/gloverlay/BaseRouteOverlay;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addNavigateArrow(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/maps/model/NavigateArrow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/NavigateArrowOptions;)Lcom/amap/api/mapcore/util/ch;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/NavigateArrow;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/NavigateArrow;-><init>(Lcom/autonavi/amap/mapcore/interfaces/INavigateArrow;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    iget v1, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iget v2, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iget v3, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iget v4, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    iget-object v5, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->addOverlayTextureItem(IIFFII)Z

    :cond_0
    return-void
.end method

.method public addPolygon(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/maps/model/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/PolygonOptions;)Lcom/amap/api/mapcore/util/ck;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Polygon;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polygon;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolygon;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/mapcore/util/cl;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/amap/api/maps/model/Polyline;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/model/Polyline;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IPolyline;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addText(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/q;->a(Lcom/amap/api/maps/model/TextOptions;)Lcom/amap/api/maps/model/Text;

    move-result-object v0

    return-object v0
.end method

.method public addTileOverlay(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/v;->a(Lcom/amap/api/maps/model/TileOverlayOptions;)Lcom/amap/api/maps/model/TileOverlay;

    move-result-object v0

    return-object v0
.end method

.method public afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aI:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aQ:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/a;->aQ:Z

    new-instance v0, Lcom/amap/api/mapcore/util/a$41;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$41;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aK:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/mapcore/util/a;->aK:I

    :cond_3
    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aE:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->aE:F

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/amap/api/mapcore/util/a;->ax:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    iget v2, p0, Lcom/amap/api/mapcore/util/a;->ax:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/GLMapRender;->setRenderFps(F)V

    goto :goto_1
.end method

.method public afterDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->b()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/a;->at:I

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/i;->a(ZI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getViewMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getProjectionMatrix()[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/ak;->a(Lcom/autonavi/amap/mapcore/MapConfig;[F[F)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->K:Lcom/amap/api/mapcore/util/ct;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->K:Lcom/amap/api/mapcore/util/ct;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/ct;->b(II)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_4
    return-void
.end method

.method public animateCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    return-void
.end method

.method public animateCameraWithCallback(Lcom/amap/api/maps/CameraUpdate;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore/util/a;->animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public animateCameraWithDurationAndCallback(Lcom/amap/api/maps/CameraUpdate;JLcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public b(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->h()V

    :cond_0
    return-void
.end method

.method public b(DDLcom/autonavi/amap/mapcore/IPoint;)V
    .locals 7

    const v6, -0x39e3c000    # -10000.0f

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    :try_start_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->LatLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->p20ToScreenPoint(IIILandroid/graphics/PointF;)V

    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    iget v2, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getNewMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->p20ToScreenPoint(IILandroid/graphics/PointF;)V

    invoke-virtual {v2}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    :cond_0
    iget v0, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v0, v0

    iput v0, p5, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v0, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v0, v0

    iput v0, p5, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/FPoint;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->g:I

    iput p2, p0, Lcom/amap/api/mapcore/util/a;->h:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapWidth(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p2}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapHeight(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(IIII)V
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

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(IILandroid/graphics/PointF;)V
    .locals 4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToMapGPoint(IFFLandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public b(IILcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->screenToP20Point(IFFLandroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-long v2, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iput-wide v2, p3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iput-wide v2, p3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :cond_0
    return-void
.end method

.method public b(IZ)V
    .locals 2

    const/16 v0, 0x12

    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/mapcore/util/a;->b(IIZ)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$21;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/a$21;-><init>(Lcom/amap/api/mapcore/util/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->be:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->be:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->be:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;JLcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ay:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/a;->a(III)Z

    goto :goto_0
.end method

.method public beforeDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 3

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->o()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    const/4 v1, 0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/a;->at:I

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/i;->a(ZI)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    :cond_1
    return-void
.end method

.method public c()Lcom/autonavi/ae/gmap/GLMapState;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->b(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMinZoomLevel(I)I

    move-result v1

    if-le v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/aa;->b()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->b(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "onDoubleTap"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public c(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$22;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/a$22;-><init>(Lcom/amap/api/mapcore/util/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bf:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bf:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bf:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(ILandroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/a;->g(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/a;->e(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/a;->f(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/a;->d(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/a;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImp"

    const-string v3, "onSingleTapUp"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public calculateZoomToSpanLevel(IIIILcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/amap/api/maps/model/LatLng;",
            "Lcom/amap/api/maps/model/LatLng;",
            ")",
            "Landroid/util/Pair",
            "<",
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

    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p5, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p6, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMaxZoomLevel()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v1, p5}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v1, p6}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    new-instance v8, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v8, v2, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v8}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v3, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-static {v3, v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v0, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v2, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v2, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public canStopMapRender()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopMapRender(I)Z

    :cond_0
    return v1
.end method

.method public changeSurface(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amap/api/mapcore/util/a;->a(ILjavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkMapState(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 11

    const/4 v10, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    if-eqz v1, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->northeast:Lcom/amap/api/maps/model/LatLng;

    iget-wide v6, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v2}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-object v0, v1, Lcom/amap/api/maps/model/LatLngBounds;->southwest:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v0, v1, v3}, Lcom/autonavi/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/amap/mapcore/IPoint;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V

    :cond_2
    move-object v8, v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    const/4 v2, 0x0

    aget-object v2, v8, v2

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    const/4 v3, 0x1

    aget-object v3, v8, v3

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    const/4 v4, 0x1

    aget-object v4, v8, v4

    iget v4, v4, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/amap/api/mapcore/util/ee;->b(Lcom/autonavi/amap/mapcore/MapConfig;IIIIII)F

    move-result v0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v3

    cmpl-float v4, v0, v2

    if-gez v4, :cond_3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_5

    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/autonavi/ae/gmap/GLMapState;->getGeoCenter(Lcom/autonavi/amap/mapcore/IPoint;)V

    iget v6, v9, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    iget v7, v9, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    const/4 v0, 0x0

    aget-object v0, v8, v0

    iget v0, v0, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    const/4 v1, 0x0

    aget-object v1, v8, v1

    iget v1, v1, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    const/4 v2, 0x1

    aget-object v2, v8, v2

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    const/4 v3, 0x1

    aget-object v3, v8, v3

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    iget-object v4, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ee;->a(IIIILcom/autonavi/amap/mapcore/MapConfig;Lcom/autonavi/ae/gmap/GLMapState;II)[I

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-ne v1, v10, :cond_4

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v7, v0, v1

    :cond_4
    invoke-virtual {p1, v6, v7}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    invoke-virtual {v9}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_3

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->clear(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->i()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/i;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->k()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ak;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/cp;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "clear"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public clearException(I)V
    .locals 0

    return-void
.end method

.method public createGLOverlay(I)J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public createSurface(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/amap/api/mapcore/util/a;->a(ILjavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/a$23;-><init>(Lcom/amap/api/mapcore/util/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bj:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bj:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bj:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->d(Z)V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destorySurface(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aR:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->destorySurface()V

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getInstance()Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->reset()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->X:Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    invoke-interface {v0, p1}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onSurfaceDestroy(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aL:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aQ:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aR:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aR:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->aR:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ak;->b()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aV:Lcom/amap/api/mapcore/util/a$b;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->d()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/maps/model/AMapGestureListener;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->b()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->i()V

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->f()V

    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->x()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aq:Ljava/lang/Thread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aq:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aq:Ljava/lang/Thread;

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cz;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/db;->a(Lcom/amap/api/mapcore/util/db$a;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/db;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->aA:Lcom/amap/api/mapcore/util/db;

    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapListener(Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;)V

    new-instance v0, Lcom/amap/api/mapcore/util/a$40;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$40;-><init>(Lcom/amap/api/mapcore/util/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->b()V

    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    :cond_d
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->C()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-static {}, Lcom/amap/api/mapcore/util/gf;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/amap/api/mapcore/util/a;->a(ILjavax/microedition/khronos/opengles/GL10;)V

    const/high16 v0, 0x3f720000    # 0.9453125f

    const v1, 0x3f6effc1    # 0.93359f

    const v2, 0x3f68fc50    # 0.9101f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->drawFrame()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->pushRendererState()V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->z()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aP:Z

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/a;->aP:Z

    new-instance v0, Lcom/amap/api/mapcore/util/a$15;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$15;-><init>(Lcom/amap/api/mapcore/util/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    invoke-interface {v0, p1}, Lcom/amap/api/maps/CustomRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->popRendererState()V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$24;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/a$24;-><init>(Lcom/amap/api/mapcore/util/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bh:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bh:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bh:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->e(Z)V

    :cond_0
    return-void
.end method

.method public e(I)Z
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/a;->c(II)Z

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aX:Lcom/amap/api/mapcore/util/j;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/j;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)Lcom/amap/api/maps/model/CameraPosition;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v7

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v7}, Lcom/amap/api/mapcore/util/a;->b(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v7, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v7, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    :goto_1
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->w()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/mapcore/util/a;->a(IILcom/autonavi/amap/mapcore/DPoint;)V

    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->S:Lcom/amap/api/mapcore/util/i;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i;->c()V

    return-void
.end method

.method public f(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$25;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/a$25;-><init>(Lcom/amap/api/mapcore/util/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bi:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bi:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bi:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->U:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->b(I)F

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->a(I)V

    :cond_0
    return-void
.end method

.method public g(IZ)V
    .locals 2

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/mapcore/util/a;->b(IIZ)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$26;

    invoke-direct {v0, p0, p2, p1}, Lcom/amap/api/mapcore/util/a$26;-><init>(Lcom/amap/api/mapcore/util/a;ZI)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bm:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p2, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bm:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bm:Lcom/amap/api/mapcore/util/a$a;

    iput p1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method g(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    const/16 v3, 0x11

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAMapProjection()Lcom/amap/api/maps/Projection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/maps/Projection;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->M:Lcom/amap/api/mapcore/util/n;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/Projection;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IProjection;)V

    return-object v0
.end method

.method public getAMapUiSettings()Lcom/amap/api/maps/UiSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->L:Lcom/amap/api/maps/UiSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps/UiSettings;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/UiSettings;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->L:Lcom/amap/api/maps/UiSettings;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->L:Lcom/amap/api/maps/UiSettings;

    return-object v0
.end method

.method public getCamerInfo()Lcom/amap/api/maps/model/AMapCameraInfo;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->c()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v3

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/a;->h:I

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getFov()F

    move-result v1

    const/4 v4, 0x3

    new-array v6, v4, [I

    invoke-virtual {v0, v6}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraPosition([I)V

    new-instance v0, Lcom/amap/api/maps/model/AMapCameraInfo;

    const/4 v4, 0x0

    aget v4, v6, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v6, v5

    int-to-float v5, v5

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps/model/AMapCameraInfo;-><init>(FFFFFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->U:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->p(I)F

    move-result v0

    return v0
.end method

.method public getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->f(Z)Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    return-object v0
.end method

.method public getGlOverlayMgrPtr()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getGlOverlayMgrPtr(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getInfoWindowAnimationManager()Lcom/amap/api/maps/InfoWindowAnimationManager;
    .locals 2

    new-instance v0, Lcom/amap/api/maps/InfoWindowAnimationManager;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->K:Lcom/amap/api/mapcore/util/ct;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/InfoWindowAnimationManager;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IInfoWindowManager;)V

    return-object v0
.end method

.method public getLatLngRect([Lcom/autonavi/amap/mapcore/DPoint;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getGeoRectangle()Lcom/autonavi/amap/mapcore/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Rectangle;->getClipRect()[Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    iget v2, v2, Lcom/autonavi/amap/mapcore/IPoint;->x:I

    aget-object v3, v1, v0

    iget v3, v3, Lcom/autonavi/amap/mapcore/IPoint;->y:I

    aget-object v4, p1, v0

    invoke-static {v2, v3, v4}, Lcom/autonavi/ae/gmap/GLMapState;->geo2LonLat(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    return-object v0
.end method

.method public getMapContentApprovalNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GS\uff082017\uff093426\u53f7 |\u00a0GS\uff082017\uff092550"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMapHeight()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->h:I

    return v0
.end method

.method public getMapPrintScreen(Lcom/amap/api/maps/AMap$onMapPrintScreenListener;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->G:Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    return-void
.end method

.method public getMapScreenMarkers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ee;->b(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->b:Lcom/amap/api/mapcore/util/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/q;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->H:Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->al:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    return-void
.end method

.method public getMapTextZIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->at:I

    return v0
.end method

.method public getMapType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->ao:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->g:I

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_0
.end method

.method public getMinZoomLevel()F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0
.end method

.method public getMyLocation()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->F:Lcom/amap/api/mapcore/util/e;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/e;->a:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMyLocationStyle()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProjectionMatrix()[F
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->o:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->o:[F

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getSatelliteImageApprovalNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "GS\uff082017\uff092906"

    return-object v0
.end method

.method public getScalePerPixel()F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->g()F

    move-result v1

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    mul-double/2addr v2, v8

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    mul-double/2addr v2, v8

    const-wide v4, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    float-to-double v0, v1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    div-double v0, v2, v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->r()F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "getScalePerPixel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->n:[F

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->getViewMatrix([F)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->n:[F

    return-object v0
.end method

.method public getZoomToSpanLevel(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-virtual {v2, p2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    new-instance v8, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v4

    invoke-direct {v8, v3, v4, v5}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    invoke-virtual {v2}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getMapHeight()I

    move-result v7

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v7}, Lcom/amap/api/mapcore/util/ee;->a(Lcom/autonavi/amap/mapcore/MapConfig;IIIILcom/amap/api/maps/model/LatLngBounds;II)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v8}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v8}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v0

    goto :goto_0
.end method

.method public h(I)F
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapState;->getGLUnitWithWin(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/amap/api/mapcore/util/o;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->f(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/af;->f()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->b(I)V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setHideLogoEnble(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/w;->setLogoEnable(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndoorEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    return v0
.end method

.method public isMaploaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->ab:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->T:Z

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->c(I)V

    :cond_0
    return-void
.end method

.method public k()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->c()Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->d(I)V

    :cond_0
    return-void
.end method

.method public l(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/er;->e(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(I)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/a$17;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$17;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v1

    const/high16 v2, 0x41880000    # 17.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/amap/mapcore/FPoint;->obtain()Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3, v1}, Lcom/amap/api/mapcore/util/a;->a(IILandroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->an:Landroid/graphics/Rect;

    iget v3, v1, Lcom/autonavi/amap/mapcore/FPoint;->x:F

    float-to-int v3, v3

    iget v1, v1, Lcom/autonavi/amap/mapcore/FPoint;->y:F

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveCamera(Lcom/amap/api/maps/CameraUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/maps/CameraUpdate;->getCameraUpdateFactoryDelegate()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;)V

    goto :goto_0
.end method

.method public n(I)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aw:I

    return v0
.end method

.method public o(I)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCenter(I)Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapRect()[Lcom/autonavi/amap/mapcore/FPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->as:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->y()V

    iput-boolean v6, p0, Lcom/amap/api/mapcore/util/a;->as:Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapGeoCenter()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_x(I)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_y(I)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_z(F)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getCameraDegree()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_c(F)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->getMapAngle()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/MapConfig;->setS_r(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isMapStateChange()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-long v2, v0

    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-long v0, v0

    const/16 v4, 0x14

    invoke-static {v2, v3, v0, v1, v4}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->PixelsToLatLong(JJI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v0

    new-instance v7, Lcom/amap/api/maps/model/CameraPosition;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v4, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v4

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/amap/api/maps/model/CameraPosition;-><init>(Lcom/amap/api/maps/model/LatLng;FFF)V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/a;->aJ:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->j()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->y()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getChangeGridRatio()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->g(Z)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isTiltChanged()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isBearingChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateCompassView()V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isScaleControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateScaleView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aI:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateMessageCount()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->onChangeFinish()V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->U:I

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->q(I)V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->U:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDWithType(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->r(I)V

    return-void
.end method

.method public onChangeFinish()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onException(II)V
    .locals 0

    return-void
.end method

.method public onFling()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/v;->b(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ak:Z

    return-void
.end method

.method public onIndoorBuildingActivity(I[B)V
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    new-instance v1, Lcom/amap/api/mapcore/util/ad;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/ad;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/ad;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/ad;->b:Ljava/lang/String;

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/ad;->activeFloorName:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/ad;->activeFloorIndex:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/ad;->poiid:Ljava/lang/String;

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p2, v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, p2, v3, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, v1, Lcom/amap/api/mapcore/util/ad;->h:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/ad;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->c:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/mapcore/util/ad;->floor_indexs:[I

    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->c:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/mapcore/util/ad;->floor_names:[Ljava/lang/String;

    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->c:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/mapcore/util/ad;->d:[Ljava/lang/String;

    move v4, v2

    :goto_0
    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->c:I

    if-ge v4, v3, :cond_1

    iget-object v3, v1, Lcom/amap/api/mapcore/util/ad;->floor_indexs:[I

    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v3, v0, 0x4

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-lez v3, :cond_4

    iget-object v5, v1, Lcom/amap/api/mapcore/util/ad;->floor_names:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, p2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4

    add-int/2addr v0, v3

    move v3, v0

    :goto_1
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p2, v3

    if-lez v3, :cond_0

    iget-object v5, v1, Lcom/amap/api/mapcore/util/ad;->d:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, p2, v0, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v4

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-static {p2, v0}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v3

    iput v3, v1, Lcom/amap/api/mapcore/util/ad;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->e:I

    if-lez v3, :cond_2

    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->e:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/amap/api/mapcore/util/ad;->f:[I

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_2
    iget v3, v1, Lcom/amap/api/mapcore/util/ad;->e:I

    if-ge v0, v3, :cond_2

    iget-object v3, v1, Lcom/amap/api/mapcore/util/ad;->f:[I

    invoke-static {p2, v2}, Lcom/autonavi/ae/gmap/utils/GLConvertUtil;->getInt([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    :cond_3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->bo:Lcom/amap/api/mapcore/util/ad;

    new-instance v0, Lcom/amap/api/mapcore/util/a$39;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$39;-><init>(Lcom/amap/api/mapcore/util/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0xe

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->Z:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/a;->aH:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v3, 0x3

    iput v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/16 v3, 0x8

    iput v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    new-array v3, v5, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v3, v0

    iput-object v3, v2, Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->bn:Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/a;->a(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->p()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_3

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->ae:Z

    if-eqz v1, :cond_3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/a;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapDelegateImp"

    const-string v3, "onDragMarker"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->q()V

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/a;->u(I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/a;->v(I)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->aD:Z

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/h;->a(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public p(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCameraDegree(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public postOnUIThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postQueueEvent(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->requestRender()V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderPause()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->s(I)V

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/a;->aF:F

    return v0
.end method

.method public r(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->s(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->renderResume()V

    :cond_0
    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->setNetWorkChangeListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V

    return-void
.end method

.method public reloadMap()V
    .locals 0

    return-void
.end method

.method public removeGLOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;->removeOverlay(Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay;)V

    :cond_0
    return-void
.end method

.method public removecache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public removecache(Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v1, 0x1

    const/16 v2, 0xa29

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    new-instance v0, Lcom/amap/api/mapcore/util/a$d;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore/util/a$d;-><init>(Lcom/amap/api/mapcore/util/a;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "removecache"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public renderSurface(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/a;->drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->isRenderPause()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/m;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetRenderTime()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public resetRenderTime(Z)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    goto :goto_0
.end method

.method public resetRenderTimeLong()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public resetRenderTimeLongLong()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aB:Lcom/autonavi/ae/gmap/GLMapRender;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapRender;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 0

    invoke-static {}, Lcom/autonavi/amap/mapcore/AMapNativeRenderer;->nativeDrawLineInit()V

    return-void
.end method

.method public s(I)V
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore/util/a$20;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$20;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public set3DBuildingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->q(I)V

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore/util/a;->c(IZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->r(I)V

    return-void
.end method

.method public setAMapGestureListener(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->I:Lcom/amap/api/maps/model/AMapGestureListener;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aC:Lcom/amap/api/mapcore/util/h;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h;->a(Lcom/amap/api/maps/model/AMapGestureListener;)V

    :cond_0
    return-void
.end method

.method public setCenterToPixel(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aa:Z

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->aT:I

    iput p2, p0, Lcom/amap/api/mapcore/util/a;->aU:I

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aT:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aU:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aT:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorX(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget v1, p0, Lcom/amap/api/mapcore/util/a;->aU:I

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setAnchorY(I)V

    new-instance v0, Lcom/amap/api/mapcore/util/a$36;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$36;-><init>(Lcom/amap/api/mapcore/util/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setCustomMapStyleID(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleID(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->O:Z

    :cond_0
    return-void
.end method

.method public setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStylePath(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->O:Z

    :cond_0
    return-void
.end method

.method public setCustomRenderer(Lcom/amap/api/maps/CustomRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->au:Lcom/amap/api/maps/CustomRenderer;

    return-void
.end method

.method public setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomTextureResourcePath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amap/api/mapcore/util/ad;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$37;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/a$37;-><init>(Lcom/amap/api/mapcore/util/a;)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setIndoorEnabled(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v2, 0x402

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setIndoorEnable(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isIndoorSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->i:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/a$32;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/a$32;-><init>(Lcom/amap/api/mapcore/util/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    move v3, v4

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    :goto_2
    iput v0, v1, Lcom/autonavi/amap/mapcore/MapConfig;->maxZoomLevel:F

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w;->isZoomControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Y:Lcom/autonavi/ae/gmap/listener/MapWidgetListener;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/listener/MapWidgetListener;->invalidateZoomController(F)V

    goto :goto_0

    :cond_4
    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bk:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bk:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bk:Lcom/amap/api/mapcore/util/a$a;

    iput v1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_1
.end method

.method public setInfoWindowAdapter(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->J:Lcom/amap/api/mapcore/util/af;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/af;->a(Lcom/amap/api/maps/AMap$InfoWindowAdapter;)V

    goto :goto_0
.end method

.method public setLoadOfflineData(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore/util/a$33;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$33;-><init>(Lcom/amap/api/mapcore/util/a;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLocationSource(Lcom/amap/api/maps/LocationSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    instance-of v0, v0, Lcom/amap/api/mapcore/util/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->f()Lcom/amap/api/mapcore/util/eq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "setLocationSource"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->f()Lcom/amap/api/mapcore/util/eq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMapCustomEnable(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStylePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomStyleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/cz;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->az:Lcom/amap/api/mapcore/util/cz;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/cz;->b()V

    :cond_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a;->O:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/a;->a(Z[BZ)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->O:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bd:Lcom/amap/api/mapcore/util/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bd:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    goto :goto_0
.end method

.method public setMapLanguage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const-string v1, "zh_cn"

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    iput v2, p0, Lcom/amap/api/mapcore/util/a;->at:I

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/a;->a(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->R:Lcom/amap/api/mapcore/util/v;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/v;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/amap/api/mapcore/util/a;->ao:I

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->setMapType(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapLanguage(Ljava/lang/String;)V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->at:I

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public setMapStatusLimits(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/a;->B()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMapTextEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    new-instance v0, Lcom/amap/api/mapcore/util/a$35;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore/util/a$35;-><init>(Lcom/amap/api/mapcore/util/a;Z)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bg:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bg:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->bg:Lcom/amap/api/mapcore/util/a$a;

    iput v1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public setMapTextZIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->at:I

    return-void
.end method

.method public setMapType(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->ao:I

    if-ne p1, v3, :cond_0

    move v3, v4

    move v2, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v2}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleMode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleTime(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/MapConfig;->setMapStyleState(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/mapcore/util/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/w;->setLogoEnable(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    :goto_2
    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    move v2, v3

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    move v2, v4

    move v4, v0

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    move v3, v4

    move v2, v4

    move v4, v0

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    move v3, v4

    move v4, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->ao:I

    move v3, v4

    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMapLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "zh_cn"

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->setMapLanguage(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/amap/api/mapcore/util/a;->b(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "setMaptype"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setMaskLayerParams(IIIIIJ)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->av:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_1

    int-to-float v0, p4

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v1, v0, v1

    const/4 v0, -0x1

    if-ne p5, v0, :cond_2

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/amap/api/mapcore/util/a$38;

    invoke-direct {v1, p0, p5}, Lcom/amap/api/mapcore/util/a$38;-><init>(Lcom/amap/api/mapcore/util/a;I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    :cond_0
    :goto_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p6, p7}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->av:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/amap/api/mapcore/util/r;->a(IIII)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->av:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/r;->a(Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput p5, p0, Lcom/amap/api/mapcore/util/a;->aw:I

    new-instance v0, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/autonavi/amap/mapcore/animation/GLAlphaAnimation;-><init>(FF)V

    float-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/er;->h()Lcom/amap/api/mapcore/util/et;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/er;->h()Lcom/amap/api/mapcore/util/et;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/et;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setMaxZoomLevel(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMaxZoomLevel(F)V

    return-void
.end method

.method public setMinZoomLevel(F)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->c:Lcom/autonavi/amap/mapcore/MapConfig;

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/MapConfig;->setMinZoomLevel(F)V

    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->Q:Lcom/amap/api/mapcore/util/er;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/er;->f()Lcom/amap/api/mapcore/util/eq;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->F:Lcom/amap/api/mapcore/util/e;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/LocationSource;->activate(Lcom/amap/api/maps/LocationSource$OnLocationChangedListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore/util/cp;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cp;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->N:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/w;->setMyLocationButtonEnabled(Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a;->T:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImp"

    const-string v2, "setMyLocationEnabled"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps/LocationSource;->deactivate()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/eq;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setMyLocationRotateAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cp;->a(F)V

    :cond_0
    return-void
.end method

.method public setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v2, 0x3e8

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/mapcore/util/cp;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/cp;-><init>(Lcom/amap/api/mapcore/util/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-virtual {p1, v2, v3}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    instance-of v0, v0, Lcom/amap/api/mapcore/util/ag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/mapcore/util/ag;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/ag;->a(J)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ad:Lcom/amap/api/maps/LocationSource;

    check-cast v0, Lcom/amap/api/mapcore/util/ag;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ag;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cp;->a(Lcom/amap/api/maps/model/MyLocationStyle;)V

    goto :goto_0
.end method

.method public setMyLocationType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->ac:Lcom/amap/api/mapcore/util/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cp;->a()Lcom/amap/api/maps/model/MyLocationStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    :cond_0
    return-void
.end method

.method public setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->ap:Lcom/amap/api/maps/model/MyTrafficStyle;

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x899

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x89a

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v4

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v5

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/16 v2, 0x89b

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getRatio()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xa

    move v5, v7

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_0
.end method

.method public setOnCameraChangeListener(Lcom/amap/api/maps/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->x:Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    return-void
.end method

.method public setOnIndoorBuildingActiveListener(Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->D:Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->C:Lcom/amap/api/maps/AMap$OnInfoWindowClickListener;

    return-void
.end method

.method public setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->y:Lcom/amap/api/maps/AMap$OnMapClickListener;

    return-void
.end method

.method public setOnMapLongClickListener(Lcom/amap/api/maps/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->B:Lcom/amap/api/maps/AMap$OnMapLongClickListener;

    return-void
.end method

.method public setOnMapTouchListener(Lcom/amap/api/maps/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->z:Lcom/amap/api/maps/AMap$OnMapTouchListener;

    return-void
.end method

.method public setOnMaploadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->w:Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    return-void
.end method

.method public setOnMarkerClickListener(Lcom/amap/api/maps/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->t:Lcom/amap/api/maps/AMap$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lcom/amap/api/maps/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->v:Lcom/amap/api/maps/AMap$OnMarkerDragListener;

    return-void
.end method

.method public setOnMultiPointClickListener(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aY:Lcom/amap/api/mapcore/util/ak;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ak;->a(Lcom/amap/api/maps/AMap$OnMultiPointClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->E:Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;

    return-void
.end method

.method public setOnPOIClickListener(Lcom/amap/api/maps/AMap$OnPOIClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->A:Lcom/amap/api/maps/AMap$OnPOIClickListener;

    return-void
.end method

.method public setOnPolylineClickListener(Lcom/amap/api/maps/AMap$OnPolylineClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a;->u:Lcom/amap/api/maps/AMap$OnPolylineClickListener;

    return-void
.end method

.method public setRenderFps(I)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x28

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/a;->ax:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->W:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public setRunLowFrame(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->q()V

    goto :goto_0
.end method

.method public setTrafficEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->aM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a;->V:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/a$31;

    invoke-direct {v0, p0, p1, p1}, Lcom/amap/api/mapcore/util/a$31;-><init>(Lcom/amap/api/mapcore/util/a;ZZ)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/a;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aZ:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/a$a;->c:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aZ:Lcom/amap/api/mapcore/util/a$a;

    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/a$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aZ:Lcom/amap/api/mapcore/util/a$a;

    iput v1, v0, Lcom/amap/api/mapcore/util/a$a;->g:I

    goto :goto_0
.end method

.method public setVisibilityEx(I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->P:Lcom/amap/api/mapcore/util/m;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/m;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setZoomScaleParam(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/a;->aF:F

    return-void
.end method

.method public stopAnimation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->interruptAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/a;->resetRenderTime()V

    return-void
.end method

.method public t()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->e:Landroid/content/Context;

    return-object v0
.end method

.method public t(I)Lcom/amap/api/mapcore/util/cw;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aW:Lcom/amap/api/mapcore/util/cx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aW:Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/cx;->a(I)Lcom/amap/api/mapcore/util/cw;

    move-result-object v0

    goto :goto_0
.end method

.method public u()[F
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->n:[F

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getViewMatrix([F)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->o:[F

    invoke-virtual {v0, v2}, Lcom/autonavi/ae/gmap/GLMapState;->getProjectionMatrix([F)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->n:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->o:[F

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->m:[F

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->m:[F

    iget-object v2, p0, Lcom/amap/api/mapcore/util/a;->o:[F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/a;->n:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->m:[F

    goto :goto_0
.end method

.method public v()Lcom/amap/api/mapcore/util/cx;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a;->aW:Lcom/amap/api/mapcore/util/cx;

    return-object v0
.end method
