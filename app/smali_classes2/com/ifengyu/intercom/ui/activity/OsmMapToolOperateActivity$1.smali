.class Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OsmMapToolOperateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v9

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->j(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1, v9}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->k(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lcom/ifengyu/intercom/ui/map/d/a/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/ui/map/d/a/b;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-interface {v9}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->g(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->h(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v9}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->i(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->l(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v5, 0x7f09013b

    invoke-virtual {v4, v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020128

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(ZZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->m(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    new-instance v0, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v6}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020121

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->n(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->removeAllItems()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->n(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->o(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v2, 0x7f09012d

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->p(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.6f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->q(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.6f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

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

    const/4 v0, 0x1

    new-array v8, v0, [F

    const/4 v0, 0x0

    aget-wide v0, v2, v0

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-interface {v6}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-int v0, v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v1

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

    :cond_5
    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$1;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v1

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
