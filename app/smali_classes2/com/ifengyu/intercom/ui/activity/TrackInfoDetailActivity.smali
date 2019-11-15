.class public Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "TrackInfoDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;,
        Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;
    }
.end annotation


# instance fields
.field private A:D

.field private B:D

.field private C:D

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/intercom/greendao/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/ifengyu/intercom/greendao/bean/b;

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private G:J

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Landroid/graphics/Typeface;

.field private K:Lcom/github/mikephil/charting/charts/LineChart;

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private N:Ljava/lang/String;

.field private O:I

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Ljava/io/File;

.field private S:Lcom/amap/api/maps/AMap;

.field private T:Lcom/amap/api/maps/model/LatLngBounds;

.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/amap/api/maps/MapView;

.field private d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const-string v0, "TrackInfoDetailActivity"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->P:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->R:Ljava/io/File;

    return-object p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/MapView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f100180

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->P:Landroid/widget/LinearLayout;

    const v0, 0x7f100188

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->Q:Landroid/widget/LinearLayout;

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    const v0, 0x7f10017f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/MapView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->setMapType(I)V

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

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setCustomMapStylePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100181

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v0, 0x7f100182

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f100183

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f100184

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f100186

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f100187

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f100189

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f10018a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f10018b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->R:Ljava/io/File;

    return-object v0
.end method

.method private d()V
    .locals 18

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/greendao/bean/b;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v2

    sget-object v3, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->b:Lorg/greenrobot/greendao/f;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/greenrobot/greendao/c/i;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/greenrobot/greendao/f;

    const/4 v4, 0x0

    sget-object v5, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao$Properties;->g:Lorg/greenrobot/greendao/f;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/c/g;->a([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    div-float v10, v2, v3

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/greendao/bean/c;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/lang/String;

    const-string v11, "for_preview_track"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Ljava/lang/Integer;

    move-result-object v11

    if-nez v4, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v8, v7

    move v7, v6

    move v6, v5

    :goto_1
    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->f()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/util/ArrayList;

    new-instance v11, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v11, v12, v13}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2
    new-instance v11, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v12, v3

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v14

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v14, v3

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v14, v14, v16

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v6, v8, :cond_9

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v8, v7

    move v7, v6

    move v6, v5

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v3

    add-float/2addr v12, v10

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/util/ArrayList;

    new-instance v11, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/c;->e()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v11, v12, v13}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_2

    :cond_5
    sub-int v2, v7, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v2, v5, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/lang/String;

    const-string v5, "for_preview_track"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v8, v2

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/ifengyu/intercom/greendao/bean/b;->f(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/bean/b;->j(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_7
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, " km"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v4, 0xd

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/SpannableString;

    const-string v4, "km/h"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0xd

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/SpannableString;

    const-string v5, "m"

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xd

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const v6, 0x7f020172

    invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v5

    const v6, 0x7f020172

    invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v5

    const v6, 0x7f020172

    invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "avatar"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-virtual {v6, v7, v8, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->q:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->M()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/bean/b;->h()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/ifengyu/intercom/b/ac;->f(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v9}, Lcom/ifengyu/intercom/greendao/bean/b;->o()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/bean/b;->n()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ac;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v6, 0xd

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v6, 0x5

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/bean/b;->p()Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->q()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->t()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/bean/b;->u()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->v()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->u()Lcom/github/mikephil/charting/data/j;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/h;)V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->e()V

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->t()V

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->k()V

    return-void

    :cond_8
    move v5, v3

    goto/16 :goto_2

    :cond_9
    move v8, v7

    move v7, v6

    move v6, v5

    goto/16 :goto_1

    :cond_a
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/amap/api/maps/AMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method private e()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    if-nez v1, :cond_1

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:D

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:D

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:D

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:D

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:D

    cmpl-double v0, v2, v6

    if-lez v0, :cond_2

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:D

    :cond_2
    iget-wide v6, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:D

    cmpg-double v0, v2, v6

    if-gez v0, :cond_3

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:D

    :cond_3
    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:D

    cmpl-double v0, v4, v2

    if-lez v0, :cond_4

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:D

    :cond_4
    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:D

    cmpg-double v0, v4, v2

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:D

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->A:D

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->C:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->z:D

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->B:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/amap/api/maps/model/LatLngBounds;

    invoke-direct {v2, v0, v1}, Lcom/amap/api/maps/model/LatLngBounds;-><init>(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Lcom/amap/api/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 4

    const/4 v2, 0x0

    const v0, 0x7f0900cf

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->stopAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->s()V

    return-void
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:I

    return v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/lang/String;

    const-string v1, "for_look_saved_track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/lang/String;

    const-string v1, "for_preview_track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/b;->A()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TrackInfoDetailActivity"

    const-string v1, "trackInfoData IsSaved"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->finish()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0900d2

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(ZZII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->stopAnimation()V

    invoke-static {p0}, Lcom/ifengyu/intercom/a;->a(Landroid/app/Activity;)V

    sget v0, Lcom/ifengyu/intercom/a;->c:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps/MapView;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->getMapScreenShot(Lcom/amap/api/maps/AMap$OnMapScreenShotListener;)V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D:Ljava/util/List;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/a/a;->a(Lcom/ifengyu/intercom/greendao/bean/b;Ljava/util/List;Lcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method private s()V
    .locals 4

    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->e(I)V

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private t()V
    .locals 9

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    new-instance v5, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v5}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/amap/api/maps/model/LatLng;

    aput-object v0, v6, v3

    const/4 v0, 0x1

    aput-object v1, v6, v0

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/model/PolylineOptions;->add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f00a5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    move v1, v3

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-static {v8}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f00a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v4, v0}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v1, 0x7f02012c

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v1, 0x7f02012d

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/Marker;->setInfoWindowEnable(Z)V

    return-void
.end method

.method private u()Lcom/github/mikephil/charting/data/j;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->L:Ljava/util/ArrayList;

    const v2, 0x7f09002e

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->g(I)V

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->f(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->c(F)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->b(I)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->b(Z)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->a(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->c(Z)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->a(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->c:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->a(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->b(F)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/github/mikephil/charting/data/j;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private v()V
    .locals 7

    const v6, 0x7f0f006a

    const v5, 0x7f0f001a

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawBorders(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Lcom/github/mikephil/charting/components/c;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Legend;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->b:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->a(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/XAxis;->a(I)V

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/XAxis;->a(F)V

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->d(I)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->a(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->N:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->c(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->b(F)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->a(Lcom/github/mikephil/charting/c/d;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->a(IZ)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->a(I)V

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->a(F)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->a(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->c(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->E:Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/b;->s()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->O:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->b(F)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->g(F)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->f(F)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->a(IZ)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;->a(Lcom/github/mikephil/charting/c/d;)V

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->d(I)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->K:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->b(Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->q()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->q()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->stopAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->S:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->T:Lcom/amap/api/maps/model/LatLngBounds;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->moveCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->f()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000e3 -> :sswitch_1
        0x7f1000e4 -> :sswitch_2
        0x7f1000e5 -> :sswitch_3
        0x7f10015b -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->setContentView(I)V

    sget-object v0, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->J:Landroid/graphics/Typeface;

    const v0, 0x7f0900ce

    const v1, 0x7f020128

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->a(ZZII)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "trackInfoPrimaryKeyId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:J

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "track_info_for_what"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/lang/String;

    const-string v0, "TrackInfoDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent trackPrimaryKetID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->G:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---fromWhere:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "TrackInfoDetailActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->c:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
