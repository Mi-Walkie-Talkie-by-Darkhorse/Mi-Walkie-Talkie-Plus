.class public Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OsmMapToolOperateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Landroid/widget/TextView;

.field private D:Lorg/osmdroid/views/overlay/Polyline;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/ifengyu/intercom/ui/map/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/ui/map/f/a/b<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:Lorg/osmdroid/api/IGeoPoint;

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/PopupWindow;

.field private V:Landroid/hardware/SensorManager;

.field private W:Landroid/hardware/Sensor;

.field private X:Landroid/view/GestureDetector;

.field private Y:D

.field private Z:D

.field private b0:I

.field bottomMapKitBottomLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090272
    .end annotation
.end field

.field private c0:Landroid/text/SpannableString;

.field private d0:Landroid/text/SpannableString;

.field private e0:Landroid/text/SpannableString;

.field private f0:Z

.field mapView:Lorg/osmdroid/views/MapView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090252
    .end annotation
.end field

.field myLocateIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025a
    .end annotation
.end field

.field popupBg:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09030a
    .end annotation
.end field

.field private q:Lcom/ifengyu/intercom/ui/map/f/a/h;

.field private r:Lcom/ifengyu/intercom/ui/map/f/a/h;

.field private s:Lcom/ifengyu/intercom/ui/map/f/a/a;

.field private t:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090419
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041d
    .end annotation
.end field

.field private u:Lorg/osmdroid/api/IMapController;

.field private v:Lcom/ifengyu/intercom/ui/map/f/a/d;

.field private w:Lcom/ifengyu/intercom/ui/map/f/a/c;

.field private x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private y:Z

.field private z:Z

.field zoomBigIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025b
    .end annotation
.end field

.field zoomSmallIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f0:Z

    return-void
.end method

.method private A()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v0

    .line 2
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->S:Landroid/widget/ImageView;

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->T:Landroid/widget/ImageView;

    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->S:Landroid/widget/ImageView;

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->T:Landroid/widget/ImageView;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lcom/ifengyu/intercom/ui/map/f/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->N:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->R:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->P:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Q:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method private a(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 5

    .line 7
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;

    invoke-direct {v4, p0, p1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/g/a;->a(DDLcom/ifengyu/intercom/g/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Z

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->O:Lorg/osmdroid/api/IGeoPoint;

    return-object p1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lcom/ifengyu/intercom/ui/map/f/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Lcom/ifengyu/intercom/ui/map/f/a/b;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Z

    return p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Z

    return p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->M:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->I:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->K:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->L:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->J:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/view/GestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    return-object p0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->P:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->R:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->N:I

    return p0
.end method

.method static synthetic s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/api/IGeoPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->O:Lorg/osmdroid/api/IGeoPoint;

    return-object p0
.end method

.method static synthetic u(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c0:Landroid/text/SpannableString;

    return-object p0
.end method

.method static synthetic v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d0:Landroid/text/SpannableString;

    return-object p0
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e0:Landroid/text/SpannableString;

    return-object p0
.end method

.method private w()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f1101ea

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic x(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    return-object p0
.end method

.method private x()V
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v2, 0x7f1101ea

    const/high16 v4, 0x41700000    # 15.0f

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->O:Lorg/osmdroid/api/IGeoPoint;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->N:I

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f1101e9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 24
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 25
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c0:Landroid/text/SpannableString;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->N:I

    const/16 v4, 0x3e8

    if-ge v2, v4, :cond_5

    .line 27
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d0:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 29
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "%.1f"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e0:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private y()V
    .locals 7

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/view/GestureDetector;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const/16 v4, 0x12

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/ifengyu/intercom/ui/map/f/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lcom/ifengyu/intercom/ui/map/f/a/h;

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/ifengyu/intercom/ui/map/f/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/h;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->n()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lcom/ifengyu/intercom/ui/map/f/a/h;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/f/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/f/a/a;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->n()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/f/a/h;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/f/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/f/a/a;

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/f/a/a;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->setBuiltInZoomControls(Z)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Lorg/osmdroid/api/IMapController;

    .line 13
    iget v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b0:I

    invoke-interface {v0, v3}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    .line 14
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:D

    iget-wide v5, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:D

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 15
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Lorg/osmdroid/api/IMapController;

    invoke-interface {v3, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 16
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ifengyu/intercom/ui/map/f/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Lcom/ifengyu/intercom/ui/map/f/a/d;

    .line 17
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/c;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Lcom/ifengyu/intercom/ui/map/f/a/d;

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v3, v4}, Lcom/ifengyu/intercom/ui/map/f/a/c;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Lcom/ifengyu/intercom/ui/map/f/a/c;

    .line 18
    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDrawAccuracyEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    .line 21
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setMaxLength(F)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setScaleBarOffset(II)V

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private z()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Z

    const v1, 0x7f090270

    const v2, 0x7f090273

    const v3, 0x7f090271

    const v4, 0x7f0c00d3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f1101f1

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c0:Landroid/text/SpannableString;

    .line 7
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0xc

    invoke-direct {v8, v9, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c0:Landroid/text/SpannableString;

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/16 v11, 0x11

    invoke-virtual {v0, v8, v7, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c0:Landroid/text/SpannableString;

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f060036

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c0:Landroid/text/SpannableString;

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v0, v8, v7, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    new-instance v0, Landroid/text/SpannableString;

    const-string v8, " m"

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d0:Landroid/text/SpannableString;

    .line 10
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v9, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v10, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d0:Landroid/text/SpannableString;

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v0, v8, v7, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    new-instance v0, Landroid/text/SpannableString;

    const-string v8, " km"

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e0:Landroid/text/SpannableString;

    .line 12
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v8, v9, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v9, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e0:Landroid/text/SpannableString;

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v0, v8, v7, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v8, 0x7f110297

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 14
    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f1101ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    const/high16 v1, 0x40000000    # 2.0f

    .line 25
    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Ljava/util/ArrayList;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Ljava/util/ArrayList;

    .line 34
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/map/f/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v5, p0}, Lcom/ifengyu/intercom/ui/map/f/a/b;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Lcom/ifengyu/intercom/ui/map/f/a/b;

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/Polyline;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Lcom/ifengyu/intercom/ui/map/f/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Z

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v6, 0x7f110045

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 39
    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    .line 40
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Landroid/widget/TextView;

    const v1, 0x7f11008e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 45
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v5, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    .line 48
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f110167

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0c00d4

    .line 50
    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    const v1, 0x7f090264

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->I:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->J:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    const v1, 0x7f090263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->K:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->L:Landroid/widget/TextView;

    .line 55
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->K:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    aget-wide v8, v0, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "%.6f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->L:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    aget-wide v8, v0, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u00b0N"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 59
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v5, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->M:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    .line 63
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->M:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x()V

    goto :goto_0

    .line 4
    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w()V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->U:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 7
    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B()V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->U:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 9
    :sswitch_5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Lorg/osmdroid/api/IMapController;

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    goto :goto_0

    .line 10
    :sswitch_6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Lorg/osmdroid/api/IMapController;

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    goto :goto_0

    .line 11
    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09025a -> :sswitch_7
        0x7f09025b -> :sswitch_6
        0x7f09025d -> :sswitch_5
        0x7f09026b -> :sswitch_4
        0x7f09026d -> :sswitch_3
        0x7f090270 -> :sswitch_2
        0x7f090271 -> :sswitch_1
        0x7f090419 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0040

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "map_kit_measure_what"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "measure_distance"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Z

    goto :goto_0

    :cond_0
    const-string v0, "measure_altitude"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Z

    goto :goto_0

    :cond_1
    const-string v0, "measure_latLong"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Z

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "osm_map_latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:D

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "osm_map_longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:D

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "osm_map_zoom_level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b0:I

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y()V

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z()V

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->V:Landroid/hardware/SensorManager;

    const/4 v0, 0x3

    .line 17
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->W:Landroid/hardware/Sensor;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    .line 20
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f0:Z

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f0:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "OsmMapToolOperateActivity"

    const-string v1, "onStart"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Lcom/ifengyu/intercom/ui/map/f/a/d;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->V:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->W:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Lcom/ifengyu/intercom/ui/map/f/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Lcom/ifengyu/intercom/ui/map/f/a/c;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "OsmMapToolOperateActivity"

    const-string v1, "onStop"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Lcom/ifengyu/intercom/ui/map/f/a/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Lcom/ifengyu/intercom/ui/map/f/a/d;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->V:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method
