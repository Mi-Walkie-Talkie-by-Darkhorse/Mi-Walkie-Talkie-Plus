.class Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;
.super Lcom/ifengyu/intercom/a/b/a;
.source "GaoDeMapToolOperateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->a(Lcom/amap/api/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/amap/api/maps/model/LatLng;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;Lcom/amap/api/maps/model/LatLng;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;I)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const v1, 0x7f0400cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1002d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Lcom/amap/api/maps/AMap;

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const-string v1, "\u6d4b\u91cf\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2$2;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->a(Ljava/lang/Double;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2$1;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
