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
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v1, :cond_1

    const v1, 0x7f080128

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    if-ne p1, v1, :cond_2

    const v1, 0x7f080124

    goto :goto_0

    :cond_2
    const v1, 0x7f080127

    :goto_0
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_3
    return-object v0
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->a:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/16 v3, 0xbc

    .line 3
    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v3

    iget v4, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    float-to-int v4, v4

    sub-int/2addr v3, v4

    const/4 v9, 0x2

    .line 4
    div-int/2addr v2, v9

    int-to-float v2, v2

    div-int/2addr v1, v9

    int-to-float v1, v1

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    iget v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a:F

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->h(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    const v4, 0x7f06018b

    if-ne v1, v2, :cond_0

    .line 8
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    int-to-float v1, v3

    .line 10
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 11
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->a(Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 12
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v5, v11, v11, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x5

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x5

    .line 15
    new-instance v12, Landroid/graphics/Rect;

    neg-int v13, v6

    neg-int v14, v10

    invoke-direct {v12, v13, v14, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 17
    sget-object v6, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$a;->a:[I

    iget-object v13, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v6, v6, v13

    const/4 v13, 0x1

    if-eq v6, v13, :cond_5

    if-eq v6, v9, :cond_4

    const/4 v14, 0x3

    if-eq v6, v14, :cond_3

    const/4 v2, 0x4

    if-eq v6, v2, :cond_1

    goto/16 :goto_1

    .line 18
    :cond_1
    iget v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    const/16 v5, 0x64

    if-lt v2, v5, :cond_2

    .line 19
    iput v5, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    .line 20
    :cond_2
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    new-instance v2, Landroid/graphics/RectF;

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 23
    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    int-to-double v4, v1

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    mul-double v4, v4, v14

    double-to-int v1, v4

    int-to-float v4, v1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 24
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/16 v2, 0x56

    invoke-static {v2}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 26
    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v11, v13, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 28
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 29
    iget-object v3, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    neg-float v4, v3

    div-float/2addr v4, v8

    .line 30
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    iget-object v6, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 31
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/16 v4, 0x2a

    invoke-static {v4}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const-string v4, "%"

    invoke-virtual {v1, v4, v11, v13, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-float/2addr v3, v8

    .line 33
    invoke-static {v9}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    neg-int v1, v2

    div-int/2addr v1, v9

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 34
    :cond_3
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 35
    :cond_4
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->b:Landroid/graphics/Paint;

    const/16 v3, 0x1c

    invoke-static {v3}, Lcom/ifengyu/intercom/p/b0;->o(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 39
    :cond_5
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v5, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setProgress(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->d:I

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle;->e:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
