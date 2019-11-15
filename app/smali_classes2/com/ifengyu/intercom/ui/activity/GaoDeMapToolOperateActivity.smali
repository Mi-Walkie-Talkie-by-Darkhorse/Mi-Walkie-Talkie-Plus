.class public Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GaoDeMapToolOperateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amap/api/maps/AMap$OnMapClickListener;
.implements Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Lcom/amap/api/maps/model/Marker;

.field private D:Lcom/amap/api/maps/model/CameraPosition;

.field private E:Landroid/text/SpannableString;

.field private F:Landroid/text/SpannableString;

.field private G:Landroid/text/SpannableString;

.field private a:Lcom/amap/api/maps/AMap;

.field private b:Z

.field bottomMapKitBottomLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e6
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field mapView:Lcom/amap/api/maps/MapView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e1
    .end annotation
.end field

.field myLocateIV:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1000e5
    .end annotation
.end field

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/amap/api/maps/model/Polyline;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private u:I

.field private v:Lcom/amap/api/maps/model/LatLng;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;

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
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Lcom/amap/api/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->D:Lcom/amap/api/maps/model/CameraPosition;

    return-object v0
.end method

.method private a(Lcom/amap/api/maps/model/LatLng;)V
    .locals 5

    iget-wide v0, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;Lcom/amap/api/maps/model/LatLng;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ifengyu/intercom/a/a;->a(DDLcom/ifengyu/intercom/a/b/b;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Lcom/amap/api/maps/AMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->X()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->X()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mitalki/map/style"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "map_style.data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->setCustomMapStylePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMapCustomEnable(Z)V

    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    const v2, 0x7f020104

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v5, v5}, Lcom/amap/api/maps/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeWidth(F)Lcom/amap/api/maps/model/MyLocationStyle;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setMaxZoomLevel(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMapClickListener(Lcom/amap/api/maps/AMap$OnMapClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method private d()V
    .locals 10

    const/4 v6, 0x0

    const/16 v5, 0xc

    const/16 v4, 0x11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomBigIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->zoomSmallIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->myLocateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090132

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " m"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->F:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->F:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->F:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " km"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->G:Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->G:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->G:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0400cf

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0400cf

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->titleBarTitle:Landroid/widget/TextView;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0400d0

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    const v1, 0x7f1002e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gaode_my_location_longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "gaode_my_location_latitude"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->A:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.6f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->B:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.6f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->bottomMapKitBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v2, 0x7f020121

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->C:Lcom/amap/api/maps/model/Marker;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->C:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->C:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v8}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private f()V
    .locals 6

    const/4 v3, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->F:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float v0, v0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->G:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private q()V
    .locals 8

    const/4 v6, 0x1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v0

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    aget-wide v4, v0, v6

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->q()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->f()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->e()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000e3 -> :sswitch_3
        0x7f1000e4 -> :sswitch_2
        0x7f1000e5 -> :sswitch_1
        0x7f1002e1 -> :sswitch_5
        0x7f1002e3 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "map_kit_measure_what"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "measure_distance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gaode_map_cameraposition"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/CameraPosition;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->D:Lcom/amap/api/maps/model/CameraPosition;

    invoke-static {p0}, Lcom/ifengyu/intercom/b/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->d()V

    return-void

    :cond_1
    const-string v1, "measure_altitude"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c:Z

    goto :goto_0

    :cond_2
    const-string v1, "measure_latLong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->d:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->x:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    return-void
.end method

.method public onMapClick(Lcom/amap/api/maps/model/LatLng;)V
    .locals 14

    const/16 v13, 0x3e8

    const/high16 v12, 0x447a0000    # 1000.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->getOptions()Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/PolylineOptions;->add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->s:Lcom/amap/api/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_0

    iput v9, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v2, 0x7f020121

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->t:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->v:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0, v9}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    new-array v8, v10, [F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->v:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->v:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->E:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    if-ge v0, v13, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->F:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const v2, 0x7f02018e

    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v11, v11}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.1f"

    new-array v2, v10, [Ljava/lang/Object;

    iget v3, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->u:I

    int-to-float v3, v3

    div-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->G:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c:Z

    if-eqz v0, :cond_3

    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020128

    invoke-virtual {p0, v9, v10, v0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a(ZZLjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a(Lcom/amap/api/maps/model/LatLng;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->C:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v10}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->C:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->A:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.6f"

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->B:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.6f"

    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->Y()[D

    move-result-object v2

    new-array v8, v10, [F

    aget-wide v0, v2, v9

    aget-wide v2, v2, v10

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    float-to-int v0, v0

    if-ge v0, v13, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->z:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "%.1f"

    new-array v2, v10, [Ljava/lang/Object;

    int-to-float v0, v0

    div-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->z:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "km"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "locationType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "amap"

    const-string v1, "\u5b9a\u4f4d\u4fe1\u606f\uff0c bundle is null \u6216\u8005\u6709\u9519"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "amap"

    const-string v1, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "OsmMapToolOperateActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "OsmMapToolOperateActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onStop()V

    return-void
.end method
