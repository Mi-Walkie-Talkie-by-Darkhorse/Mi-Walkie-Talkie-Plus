.class public Lcom/ifengyu/intercom/l/b/c/v1;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "Mi3ShareLocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;
.implements Lcom/ifengyu/intercom/ui/c/g/b;


# instance fields
.field protected A:Lcom/ifengyu/intercom/l/b/e/u;

.field private B:Lcom/amap/api/maps/AMap;

.field private C:Lcom/amap/api/maps/model/MyLocationStyle;

.field private D:Lcom/amap/api/maps/UiSettings;

.field private E:Z

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/c/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/ifengyu/intercom/ui/c/g/d;

.field private H:Landroid/widget/PopupWindow;

.field private I:Landroid/widget/PopupWindow;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private z:Lcom/ifengyu/intercom/k/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->E:Z

    return-void
.end method

.method private synthetic A3(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/q;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 3
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic C3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private synthetic E3()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private G3()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->v()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->H(Z)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/s;->A:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v2, 0x7f080134

    goto :goto_0

    :cond_0
    const v2, 0x7f080133

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->r()[D

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    const/4 v2, 0x1

    aget-wide v5, v0, v2

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v8}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :cond_1
    return-void
.end method

.method private H3(I)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f060036

    const v2, 0x7f06018b

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->J:Landroid/widget/ImageView;

    const v0, 0x7f08019f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->K:Landroid/widget/ImageView;

    const v0, 0x7f08019c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->J:Landroid/widget/ImageView;

    const v0, 0x7f08019e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->L:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->K:Landroid/widget/ImageView;

    const v0, 0x7f08019d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public static I3()Lcom/ifengyu/intercom/l/b/c/v1;
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/l/b/c/v1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/l/b/c/v1;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private J3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->getCurChIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->B:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->B:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private K3()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/p/x;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "errorCode"

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "locationType"

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 5
    iget-boolean v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->E:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->E:Z

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v8, v2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/amap/api/maps/model/LatLng;F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    new-instance v8, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DDZ)V

    invoke-static {v8}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    double-to-int v0, v5

    invoke-static {v1, v2, v3, v4, v0}, Lcom/ifengyu/intercom/p/d0;->l0(DDI)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/ifengyu/intercom/p/d0;->k0(DD)V

    goto :goto_1

    :cond_3
    const-string v0, "amap"

    const-string v1, " setLocation  bundle is null"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private L3()V
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationType(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/MyLocationStyle;->interval(J)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const v1, 0x7f080154

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->anchor(FF)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->radiusFillColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeColor(I)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->strokeWidth(F)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/AMap;->setOnMyLocationChangeListener(Lcom/amap/api/maps/AMap$OnMyLocationChangeListener;)V

    return-void
.end method

.method private M3()V
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
    iget-object v2, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->N3()V

    :cond_1
    return-void
.end method

.method private N3()V
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

.method private O3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->D:Lcom/amap/api/maps/UiSettings;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->D:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->D:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->D:Lcom/amap/api/maps/UiSettings;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setLogoLeftMargin(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->D:Lcom/amap/api/maps/UiSettings;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->D:Lcom/amap/api/maps/UiSettings;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method

.method private P3()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0110

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902d8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902d3

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    const v2, 0x7f12000f

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/ifengyu/intercom/l/b/c/u0;

    invoke-direct {v3, p0}, Lcom/ifengyu/intercom/l/b/c/u0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 11
    iget-object v5, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v5, v5, Lcom/ifengyu/intercom/k/s;->w:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 12
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 13
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 14
    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/ifengyu/intercom/g;->c(Landroid/app/Activity;)V

    .line 16
    iget-object v5, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v6, v6, Lcom/ifengyu/intercom/k/s;->w:Landroid/widget/TextView;

    sget v7, Lcom/ifengyu/intercom/g;->a:I

    div-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr v7, v0

    aget v0, v3, v2

    invoke-virtual {v5, v6, v4, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private Q3()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c010d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902da

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->J:Landroid/widget/ImageView;

    const v1, 0x7f0902db

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->L:Landroid/widget/TextView;

    const v1, 0x7f0902dc

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->K:Landroid/widget/ImageView;

    const v1, 0x7f0902dd

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->M:Landroid/widget/TextView;

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->J:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->K:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getMapType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 10
    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/l/b/c/v1;->H3(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/l/b/c/v1;->H3(I)V

    .line 12
    :goto_0
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    const v4, 0x7f12000f

    .line 13
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 14
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/ifengyu/intercom/l/b/c/y0;

    invoke-direct {v4, p0}, Lcom/ifengyu/intercom/l/b/c/y0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-array v1, v2, [I

    .line 18
    iget-object v4, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v4, v4, Lcom/ifengyu/intercom/k/s;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 19
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 20
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 21
    invoke-virtual {v0, v4, v6}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/ifengyu/intercom/g;->c(Landroid/app/Activity;)V

    .line 23
    iget-object v4, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v6, v6, Lcom/ifengyu/intercom/k/s;->w:Landroid/widget/TextView;

    sget v7, Lcom/ifengyu/intercom/g;->a:I

    div-int/2addr v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr v7, v0

    aget v0, v1, v3

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/p/g0;->b(Landroid/content/Context;Landroid/widget/PopupWindow;F)V

    return-void
.end method

.method private h3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/c/v1;->H3(I)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->N3()V

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->h0(I)V

    return-void
.end method

.method private i3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->H:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/c/v1;->H3(I)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->setMapType(I)V

    .line 4
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->h0(I)V

    return-void
.end method

.method private j3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/high16 v1, 0x41900000    # 18.0f

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMaxZoomLevel(F)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->M3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->L3()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->O3()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/s0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/s0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setOnMapLoadedListener(Lcom/amap/api/maps/AMap$OnMapLoadedListener;)V

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setLoadOfflineData(Z)V

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->g0(Z)V

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->F:Ljava/util/ArrayList;

    const-wide/16 v0, 0x3e8

    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/x0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/x0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    .line 13
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 14
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/n;->A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/w0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/w0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    new-instance v2, Lcom/ifengyu/intercom/l/b/c/v1$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/l/b/c/v1$a;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private k3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->E:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/r0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/r0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->E:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f11016d

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->p(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->j3()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->isShareLoc()Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/s;->C:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/l/b/c/v1;->J3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    :cond_1
    return-void
.end method

.method private l3()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FragmentLiveDataObserve"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/z;)V

    const-class v1, Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/b/e/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->y()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/v0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/v0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->w()Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/z0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/z0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->t()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/t0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/t0;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    return-void
.end method

.method private synthetic m3()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->r()[D

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

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

.method private synthetic o3(Ljava/lang/Long;)Ljava/util/List;
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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->F:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private synthetic q3(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/ifengyu/intercom/ui/c/g/d;

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->F:Ljava/util/ArrayList;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/c/g/d;-><init>(Lcom/amap/api/maps/AMap;Ljava/util/List;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->G:Lcom/ifengyu/intercom/ui/c/g/d;

    .line 2
    invoke-virtual {p1, p0}, Lcom/ifengyu/intercom/ui/c/g/d;->q(Lcom/ifengyu/intercom/ui/c/g/b;)V

    return-void
.end method

.method private synthetic s3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private synthetic u3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getStatus()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/common/model/OperationResult;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "ACTION_STOP_SHARE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f11037b

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "ACTION_OPEN_SHARE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const p1, 0x7f1103a9

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const p1, 0x7f1103a8

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->e3(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->Y2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic w3(Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->C:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;->isShareLoc()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private synthetic y3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->J3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    return-void
.end method


# virtual methods
.method public synthetic B3(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ifengyu/intercom/l/b/c/v1;->A3(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic D3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->C3()V

    return-void
.end method

.method public synthetic F3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->E3()V

    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/f;->e(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/k/s;

    iput-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ViewDataBinding;->A(Landroidx/lifecycle/j;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/k/s;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->l3()V

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->j(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g3(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
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
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->G:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/c/g/d;->f(Lcom/ifengyu/intercom/ui/c/g/c;)V

    return-void
.end method

.method public synthetic n3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->m3()V

    return-void
.end method

.method public onBeanUserLocationChanged(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V
    .locals 0
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->g3(Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090234

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/s;->C:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/ItemView;->getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->o0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/l/b/e/u;->n0()V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f09009b

    if-ne p1, v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->G3()V

    return-void

    :cond_2
    const v0, 0x7f090099

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomIn()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void

    :cond_3
    const v0, 0x7f09009a

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-static {}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomOut()Lcom/amap/api/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void

    :cond_4
    const v0, 0x7f090097

    if-ne p1, v0, :cond_5

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->P3()V

    return-void

    :cond_5
    const v0, 0x7f090098

    if-ne p1, v0, :cond_6

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->Q3()V

    return-void

    :cond_6
    const v0, 0x7f0902d8

    const-string v1, "gaode_map_cameraposition"

    const-string v2, "map_kit_measure_what"

    if-ne p1, v0, :cond_7

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 11
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "measure_distance"

    .line 12
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_7
    const v0, 0x7f0902d3

    if-ne p1, v0, :cond_8

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->I:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 16
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "measure_latLong"

    .line 17
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const-string v3, "gaode_my_location_longitude"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-string v2, "gaode_my_location_latitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_8
    const v0, 0x7f0902da

    if-ne p1, v0, :cond_9

    .line 23
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->h3()V

    return-void

    :cond_9
    const v0, 0x7f0902dc

    if-ne p1, v0, :cond_a

    .line 24
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->i3()V

    :cond_a
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->G:Lcom/ifengyu/intercom/ui/c/g/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->o()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->A:Lcom/ifengyu/intercom/l/b/e/u;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/b/e/u;->d0()V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/event/MiBus;->getInstance()Lcom/squareup/otto/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/b;->l(Ljava/lang/Object;)V

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
    iget-boolean v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->E:Z

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

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
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

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

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->K3()V

    goto :goto_1

    :cond_4
    const-string p1, "\u5b9a\u4f4d\u5931\u8d25"

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->K3()V

    :goto_1
    return-void
.end method

.method public onOfflineDownloadedEvent(Lcom/ifengyu/intercom/event/OfflineMapDownloadedEvent;)V
    .locals 1
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v0, "setLoadOffline(), reloadMap()--------"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->setLoadOfflineData(Z)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/AMap;->setLoadOfflineData(Z)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    invoke-virtual {p1}, Lcom/amap/api/maps/AMap;->reloadMap()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/k;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/k;->y:Ljava/lang/String;

    const-string v1, "onResume()--------"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    const v1, 0x7f080154

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->C:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationStyle(Lcom/amap/api/maps/model/MyLocationStyle;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v0, v0, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object p1, p1, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/l/b/c/v1;->k3()V

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->T2(Ljava/lang/String;)Z

    return-void
.end method

.method public synthetic p3(Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->o3(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic r3(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->q3(Ljava/util/List;)V

    return-void
.end method

.method public s1(Lcom/amap/api/maps/model/Marker;Lcom/ifengyu/intercom/ui/c/g/a;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->B:Lcom/amap/api/maps/AMap;

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->a()Lcom/ifengyu/intercom/bean/BeanUserLocation;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/q;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    .line 6
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

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
    new-instance v2, Lcom/ifengyu/intercom/l/b/c/a1;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/l/b/c/a1;-><init>(Lcom/ifengyu/intercom/l/b/c/v1;Ljava/util/List;)V

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
    iget-object p2, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object p2, p2, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v1, v5

    invoke-static {v1}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/l/b/c/v1;->z:Lcom/ifengyu/intercom/k/s;

    iget-object v1, v1, Lcom/ifengyu/intercom/k/s;->D:Lcom/amap/api/maps/MapView;

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

.method public synthetic t3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->s3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic v3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->u3(Lcom/ifengyu/intercom/device/common/model/OperationResult;)V

    return-void
.end method

.method public synthetic x3(Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->w3(Lcom/ifengyu/intercom/device/mi3/models/Mi3DeviceParamLiveData;)V

    return-void
.end method

.method public synthetic z3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/l/b/c/v1;->y3(Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;)V

    return-void
.end method
