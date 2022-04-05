.class Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;
.super Lcom/ifengyu/intercom/g/d/a;


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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->b:Lorg/osmdroid/api/IGeoPoint;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;I)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->n(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->p(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v1, 0x7f0c00cf

    invoke-static {p2, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {p2, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->p(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->p(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Lorg/osmdroid/views/overlay/OverlayItem;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->b:Lorg/osmdroid/api/IGeoPoint;

    invoke-direct {p2, v0, v0, v2}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {p2, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->n(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const p2, 0x7f11020c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d$b;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->a(Ljava/lang/Double;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const p2, 0x7f11020c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;->c:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const p2, 0x7f080189

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d$a;-><init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$d;)V

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
