.class Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;
.super Lcom/ifengyu/intercom/a/b/a;
.source "OsmMapToolOperateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lorg/osmdroid/api/IGeoPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/osmdroid/api/IGeoPoint;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->b:Lorg/osmdroid/api/IGeoPoint;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->k()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v2, 0x7f0400cb

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f1002d0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v2, 0x7f1002d1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->b(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/views/overlay/OverlayItem;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->b:Lorg/osmdroid/api/IGeoPoint;

    invoke-direct {v1, v4, v4, v2}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4$2;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->a(Ljava/lang/Double;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4$1;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$4;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
