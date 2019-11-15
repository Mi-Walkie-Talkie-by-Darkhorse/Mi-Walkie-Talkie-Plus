.class public Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "ItemizedOverlayWithFocus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private final DEFAULTMARKER_BACKGROUNDCOLOR:I

.field private DESCRIPTION_BOX_CORNERWIDTH:I

.field private DESCRIPTION_BOX_PADDING:I

.field private DESCRIPTION_LINE_HEIGHT:I

.field private DESCRIPTION_MAXWIDTH:I

.field private DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

.field private FONT_SIZE_DP:I

.field private UNKNOWN:Ljava/lang/String;

.field private fontSizePixels:I

.field private mContext:Landroid/content/Context;

.field protected mDescriptionPaint:Landroid/graphics/Paint;

.field protected mFocusItemsOnTap:Z

.field protected mFocusedItemIndex:I

.field private final mFocusedScreenCoords:Landroid/graphics/Point;

.field protected mMarkerBackgroundPaint:Landroid/graphics/Paint;

.field protected mMarkerFocusedBackgroundColor:I

.field protected mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field protected mTitlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, p5, p6}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    const/16 v0, 0x65

    const/16 v1, 0xb9

    const/16 v2, 0x4a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    iput v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    iput v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    const/16 v0, 0xe

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    const/16 v0, 0x258

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iput-object p6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default_focused_base:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_1

    :goto_1
    iput p4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->unSetFocusedItem()V

    return-void

    :cond_0
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget p4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    return-void
.end method

.method private calculateDrawSettings()V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 13

    invoke-super/range {p0 .. p3}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    :goto_1
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v8, v2, [F

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v8}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    array-length v10, v8

    if-ge v3, v10, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-nez v10, :cond_2

    move v2, v3

    :cond_2
    aget v10, v8, v3

    int-to-float v11, v5

    add-float/2addr v11, v10

    iget v12, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    if-ne v4, v2, :cond_6

    add-int/lit8 v3, v3, -0x1

    :goto_5
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v5, 0x0

    move v4, v3

    :cond_3
    int-to-float v5, v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_5

    :cond_7
    if-eq v3, v4, :cond_8

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v2, v4

    add-int/2addr v0, v5

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v7, v0, v2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v2, v0, v2

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    iget v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    mul-int/2addr v4, v8

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/RectF;

    add-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    add-int/lit8 v9, v2, -0x1

    int-to-float v9, v9

    add-int/lit8 v10, v7, 0x1

    int-to-float v10, v10

    add-int/lit8 v11, v0, 0x1

    int-to-float v11, v11

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v8, v8

    iget v9, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v9, v9

    iget-object v10, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    iget v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v8, v5

    int-to-float v2, v2

    int-to-float v9, v7

    int-to-float v10, v0

    invoke-direct {v4, v8, v2, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v2, v2

    iget v8, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    add-int v8, v5, v2

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    sub-int v2, v0, v2

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v4, v2

    :goto_6
    if-ltz v0, :cond_9

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    int-to-float v9, v8

    int-to-float v10, v4

    iget-object v11, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    sub-int v2, v4, v2

    add-int/lit8 v0, v0, -0x1

    move v4, v2

    goto :goto_6

    :cond_9
    int-to-float v0, v8

    iget v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v2, v4, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v1, v5

    int-to-float v2, v4

    int-to-float v3, v7

    int-to-float v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v5

    move-object v0, p1

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/overlay/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    goto/16 :goto_0

    :cond_a
    move-object v6, v1

    goto/16 :goto_1
.end method

.method public getFocusedItem()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mItemList:Ljava/util/List;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    goto :goto_0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

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

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDescriptionBoxCornerWidth(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    return-void
.end method

.method public setDescriptionBoxPadding(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    return-void
.end method

.method public setDescriptionLineHeight(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    return-void
.end method

.method public setDescriptionMaxWidth(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    return-void
.end method

.method public setDescriptionTitleExtraLineHeight(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    return-void
.end method

.method public setFocusItemsOnTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    return-void
.end method

.method public setFocusedItem(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    return-void
.end method

.method public setFocusedItem(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->setFocusedItem(I)V

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    return-void
.end method

.method public setMarkerBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    return-void
.end method

.method public setMarkerDescriptionForegroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setMarkerTitleForegroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public unSetFocusedItem()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    return-void
.end method
