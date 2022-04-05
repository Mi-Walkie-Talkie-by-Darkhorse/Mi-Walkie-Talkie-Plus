.class Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;
.super Lcom/ifengyu/intercom/g/d/a;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const v0, 0x7f0c00cf

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090068

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Lcom/amap/api/maps/AMap;

    move-result-object p1

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-static {p2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->b:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p2, v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/amap/api/maps/model/MarkerOptions;->draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;->c(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const-string p2, "\u6d4b\u91cf\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b$b;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->a(Ljava/lang/Double;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const p2, 0x7f11020c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;->c:Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b$a;-><init>(Lcom/ifengyu/intercom/ui/activity/GaoDeMapToolOperateActivity$b;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
