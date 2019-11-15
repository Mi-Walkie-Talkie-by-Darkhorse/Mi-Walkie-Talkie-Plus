.class public Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;
.super Landroid/view/View;
.source "ProgressCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v0, :cond_2

    const v0, 0x7f0200ea

    :goto_1
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v0, :cond_3

    const v0, 0x7f0200e6

    goto :goto_1

    :cond_3
    const v0, 0x7f0200e9

    goto :goto_1
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v5, 0x0

    const v9, 0x7f0f0095

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->getWidth()I

    move-result v1

    const/16 v2, 0xbc

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    div-float/2addr v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    int-to-float v0, v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x5

    new-instance v6, Landroid/graphics/Rect;

    neg-int v7, v3

    neg-int v8, v5

    invoke-direct {v6, v7, v8, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$1;->a:[I

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/16 v3, 0x1c

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/RectF;

    neg-int v0, v2

    int-to-float v0, v0

    neg-int v3, v2

    int-to-float v3, v3

    int-to-float v5, v2

    int-to-float v2, v2

    invoke-direct {v1, v0, v3, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    int-to-double v8, v0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    const-wide v10, 0x4076800000000000L    # 360.0

    mul-double/2addr v8, v10

    double-to-int v0, v8

    int-to-float v3, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/16 v1, 0x56

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v4, v13, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    neg-float v3, v2

    div-float/2addr v3, v12

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/16 v3, 0x2a

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const-string v3, "%"

    invoke-virtual {v0, v3, v4, v13, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const-string v0, "%"

    div-float/2addr v2, v12

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->b(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->invalidate()V

    return-void
.end method
