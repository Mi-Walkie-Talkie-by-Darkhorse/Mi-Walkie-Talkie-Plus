.class Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->y()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    const-string v4, "%.1f"

    const v5, 0x7f080126

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v1, v2, v10}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v11

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->l(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v2

    iget-object v10, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v10}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2, v9}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;I)I

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v4, 0x7f1101e9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-direct {v2, v7, v7, v1}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    goto/16 :goto_1

    :cond_0
    new-array v2, v8, [F

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v10

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v14

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-static/range {v10 .. v18}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v2, v2, v9

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    float-to-int v2, v10

    invoke-static {v5, v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;I)I

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->u(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v2

    if-ge v2, v6, :cond_1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->v(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v6}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v9

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->w(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-direct {v2, v7, v7, v1}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    :goto_1
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->x(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->r(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v3, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->b(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->c(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lcom/ifengyu/intercom/ui/map/f/a/b;

    move-result-object v1

    invoke-virtual {v1, v9, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->d(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v3, 0x7f11020d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08013e

    invoke-virtual {v2, v9, v8, v3, v4}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->a(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;Lorg/osmdroid/api/IGeoPoint;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->e(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v1, v2, v10}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-direct {v2, v7, v7, v1}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v10}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-virtual {v11}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v7, v10, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v7}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems()V

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v5}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->f(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->g(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    const v7, 0x7f1101eb

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->h(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    const-string v10, "%.6f"

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u00b0E"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->i(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u00b0N"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->r()[D

    move-result-object v2

    new-array v5, v8, [F

    aget-wide v10, v2, v9

    aget-wide v12, v2, v8

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v14

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v16

    move-object/from16 v18, v5

    invoke-static/range {v10 .. v18}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v1, v5, v9

    float-to-int v1, v1

    if-ge v1, v6, :cond_4

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->j(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    new-array v2, v8, [Ljava/lang/Object;

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->j(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "km"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return v9
.end method
