.class public Lcom/ifengyu/intercom/ui/map/f/a/b;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field protected h:I

.field protected i:Landroid/graphics/Paint;

.field protected j:Landroid/graphics/Paint;

.field protected k:Landroid/graphics/Paint;

.field protected l:Landroid/graphics/drawable/Drawable;

.field protected m:I

.field protected n:Z

.field private o:I

.field private final p:Landroid/graphics/Point;

.field private q:Landroid/content/Context;

.field private r:Ljava/lang/String;

.field private final s:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5, p6}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    const/16 p1, 0x65

    const/16 p2, 0xb9

    const/16 p5, 0x4a

    invoke-static {p1, p2, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->a:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->b:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->c:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->d:I

    const/16 p1, 0xe

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->e:I

    const/16 p1, 0x258

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->f:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->g:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->p:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->q:Landroid/content/Context;

    if-nez p3, :cond_0

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08016e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object p2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/f/a/b;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->l:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/high16 p1, -0x80000000

    if-eq p4, p1, :cond_1

    goto :goto_1

    :cond_1
    iget p4, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->a:I

    :goto_1
    iput p4, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->h:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/f/a/b;->calculateDrawSettings()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/f/a/b;->unSetFocusedItem()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/ifengyu/intercom/ui/map/f/a/b;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    return-void
.end method

.method private calculateDrawSettings()V
    .locals 5

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->e:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->o:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->g:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->f:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->r:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    add-int/lit8 v3, v0, 0x0

    add-int/lit8 v4, v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p2, :cond_0

    sget-object p2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    :cond_0
    sget-object v2, Lcom/ifengyu/intercom/ui/map/f/a/b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v1

    invoke-virtual {p2, v5, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v0

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v0

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v5, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_5
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v0

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_7
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :pswitch_8
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->m:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->l:Landroid/graphics/drawable/Drawable;

    :cond_3
    move-object v8, v2

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->p:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->p:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->r:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->r:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v4, v3, [F

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v3, :cond_9

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_6

    move v13, v9

    :cond_6
    aget v14, v4, v9

    int-to-float v15, v12

    add-float/2addr v15, v14

    iget v6, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->f:I

    int-to-float v6, v6

    cmpl-float v6, v15, v6

    if-lez v6, :cond_8

    if-ne v10, v13, :cond_7

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_7
    move v9, v13

    :goto_3
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v10, v9

    const/4 v12, 0x0

    :cond_8
    int-to-float v6, v12

    add-float/2addr v6, v14

    float-to-int v12, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    if-eq v9, v10, :cond_a

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->b:I

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    iget v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->b:I

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v3, v6

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->s:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v9, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->d:I

    sub-int v9, v6, v9

    array-length v10, v1

    add-int/lit8 v10, v10, 0x1

    iget v11, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->g:I

    mul-int v10, v10, v11

    sub-int/2addr v9, v10

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v9, v4

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->i:Landroid/graphics/Paint;

    const/high16 v10, -0x1000000

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/RectF;

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    add-int/lit8 v11, v9, -0x1

    int-to-float v11, v11

    add-int/lit8 v12, v3, 0x1

    int-to-float v12, v12

    add-int/lit8 v13, v6, 0x1

    int-to-float v13, v13

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v10, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->c:I

    int-to-float v11, v10

    int-to-float v10, v10

    iget-object v12, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v11, v10, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->i:Landroid/graphics/Paint;

    iget v10, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->h:I

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v9, v9

    int-to-float v11, v3

    int-to-float v3, v6

    invoke-direct {v4, v10, v9, v11, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->c:I

    int-to-float v9, v3

    int-to-float v3, v3

    iget-object v12, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v9, v3, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v3, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->b:I

    add-int/2addr v5, v3

    sub-int/2addr v6, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_b

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    int-to-float v9, v5

    int-to-float v12, v6

    iget-object v13, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v9, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->g:I

    sub-int/2addr v6, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_b
    int-to-float v1, v5

    iget v3, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->d:I

    sub-int v3, v6, v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v5, v6

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->j:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v5

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/f/a/b;->p:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v6

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-static/range {v1 .. v6}, Lorg/osmdroid/views/overlay/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    return-void
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->q:Landroid/content/Context;

    return-void
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->n:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->m:I

    invoke-virtual {p3}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_0
    iget-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {p3, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unSetFocusedItem()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/f/a/b;->m:I

    return-void
.end method
