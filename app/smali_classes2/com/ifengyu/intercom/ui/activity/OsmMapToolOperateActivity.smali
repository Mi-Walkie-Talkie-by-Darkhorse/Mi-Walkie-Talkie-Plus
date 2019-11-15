.class public Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "OsmMapToolOperateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/ifengyu/intercom/ui/map/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/ui/map/d/a/b",
            "<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus",
            "<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus",
            "<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:Lorg/osmdroid/api/IGeoPoint;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/ImageView;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/PopupWindow;

.field private R:Landroid/hardware/SensorManager;

.field private S:Landroid/hardware/Sensor;

.field private T:Landroid/view/GestureDetector;

.field private U:D

.field private V:D

.field private W:I

.field private X:Landroid/text/SpannableString;

.field private Y:Landroid/text/SpannableString;

.field private Z:Landroid/text/SpannableString;

.field private a:Lcom/ifengyu/intercom/ui/map/d/a/h;

.field private aa:Z

.field private b:Lcom/ifengyu/intercom/ui/map/d/a/h;

.field bottomMapKitBottomLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e6
    .end annotation
.end field

.field private c:Lcom/ifengyu/intercom/ui/map/d/a/a;

.field private d:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field mapView:Lorg/osmdroid/views/MapView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e1
    .end annotation
.end field

.field myLocateIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e5
    .end annotation
.end field

.field popupBg:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10011c
    .end annotation
.end field

.field private q:Lorg/osmdroid/api/IMapController;

.field private r:Lcom/ifengyu/intercom/ui/map/d/a/d;

.field private s:Lcom/ifengyu/intercom/ui/map/d/a/c;

.field private t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field titleBarLeft:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000c3
    .end annotation
.end field

.field titleBarTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100244
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/view/View;

.field private y:Landroid/widget/TextView;

.field private z:Lorg/osmdroid/views/overlay/Polyline;

.field zoomBigIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e3
    .end annotation
.end field

.field zoomSmallIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->aa:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->J:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->N:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->L:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->M:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)Lorg/osmdroid/api/IGeoPoint;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->K:Lorg/osmdroid/api/IGeoPoint;

    return-object p1
.end method

.method private a(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 5

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/a/a;->a(DDLcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Z

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->removeAllItems()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/b;->removeAllItems()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->O:Landroid/widget/ImageView;

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->P:Landroid/widget/ImageView;

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->K:Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->O:Landroid/widget/ImageView;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->P:Landroid/widget/ImageView;

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->J:I

    return v0
.end method

.method private f()V
    .locals 6

    const v4, 0x7f09012c

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-virtual {v0, v5}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/b;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-virtual {v0, v5}, Lcom/ifengyu/intercom/ui/map/d/a/b;->removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/api/IGeoPoint;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->K:Lorg/osmdroid/api/IGeoPoint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->J:I

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->J:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_6

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:Landroid/text/SpannableString;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:Landroid/text/SpannableString;

    return-object v0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lcom/ifengyu/intercom/ui/map/d/a/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Lcom/ifengyu/intercom/ui/map/d/a/b;

    return-object v0
.end method

.method static synthetic l(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Z

    return v0
.end method

.method static synthetic m(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Z

    return v0
.end method

.method static synthetic n(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->I:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    return-object v0
.end method

.method static synthetic o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Landroid/widget/TextView;

    return-object v0
.end method

.method private q()V
    .locals 6

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method static synthetic r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method private r()V
    .locals 11

    const/16 v5, 0xc

    const/16 v4, 0x11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090132

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->X:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " m"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Y:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " km"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Z:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0400cf

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polyline;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    invoke-virtual {v0, v10}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->A:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->B:Ljava/util/ArrayList;

    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v10, p0}, Lcom/ifengyu/intercom/ui/map/d/a/b;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Lcom/ifengyu/intercom/ui/map/d/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->z:Lorg/osmdroid/views/overlay/Polyline;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->C:Lcom/ifengyu/intercom/ui/map/d/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0400cf

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v10, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0400d0

    invoke-static {p0, v0, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->E:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    const v1, 0x7f1002e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->G:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.6f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, v0, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->H:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.6f"

    new-array v4, v9, [Ljava/lang/Object;

    aget-wide v6, v0, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u00b0N"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v10, p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->I:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->I:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->T:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private s()V
    .locals 9

    const/16 v4, 0x12

    const/4 v8, 0x1

    const/high16 v7, -0x1000000

    const/4 v3, 0x4

    const/4 v6, 0x0

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->T:Landroid/view/GestureDetector;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    new-array v2, v6, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/ifengyu/intercom/ui/map/d/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a:Lcom/ifengyu/intercom/ui/map/d/a/h;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/h;

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    new-array v2, v6, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/ifengyu/intercom/ui/map/d/a/h;-><init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->X()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/d/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c:Lcom/ifengyu/intercom/ui/map/d/a/a;

    :cond_0
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c:Lcom/ifengyu/intercom/ui/map/d/a/a;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/MapView;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lorg/osmdroid/api/IMapController;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lorg/osmdroid/api/IMapController;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->W:I

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->U:D

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->V:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lorg/osmdroid/api/IMapController;

    invoke-interface {v1, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/d/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/d/a/d;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/d/a/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/d/a/c;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/map/d/a/c;->setDrawAccuracyEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getBarPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->c(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v8}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v6}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setMaxLength(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setScaleBarOffset(II)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$2;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->X()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/map/d/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b:Lcom/ifengyu/intercom/ui/map/d/a/h;

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/map/d/a/a;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c:Lcom/ifengyu/intercom/ui/map/d/a/a;

    goto/16 :goto_0
.end method

.method static synthetic t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    return-object v0
.end method

.method static synthetic u(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    return-object v0
.end method

.method static synthetic v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->L:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->M:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->N:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q:Lorg/osmdroid/api/IMapController;

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->Q:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000e3 -> :sswitch_3
        0x7f1000e4 -> :sswitch_2
        0x7f1000e5 -> :sswitch_1
        0x7f1002dd -> :sswitch_4
        0x7f1002df -> :sswitch_5
        0x7f1002e1 -> :sswitch_7
        0x7f1002e3 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "map_kit_measure_what"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "measure_distance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "osm_map_latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->U:D

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "osm_map_longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->V:D

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "osm_map_zoom_level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->W:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->R:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->R:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->S:Landroid/hardware/Sensor;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->aa:Z

    :cond_1
    return-void

    :cond_2
    const-string v1, "measure_altitude"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Z

    goto :goto_0

    :cond_3
    const-string v1, "measure_latLong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->D:Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->aa:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "OsmMapToolOperateActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/d/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->R:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/d/a/d;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->S:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->isMyLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->enableMyLocation()Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "OsmMapToolOperateActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s:Lcom/ifengyu/intercom/ui/map/d/a/c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->disableMyLocation()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/d/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->R:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r:Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method
