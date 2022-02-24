.class public Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;
.super Landroid/view/View;
.source "RoundProgressBarView.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    .line 5
    sget-object p3, Lcom/ifengyu/intercom/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, -0x10000

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    const p3, -0xff0100

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    const/4 p3, 0x6

    const/high16 v0, 0x41700000    # 15.0f

    .line 9
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    const/4 p3, 0x3

    const/high16 v0, 0x40a00000    # 5.0f

    .line 10
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    const/4 p3, 0x0

    const/16 v0, 0x64

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    const/4 p3, 0x5

    .line 12
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 3
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 4
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v4, v2

    .line 8
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    if-eqz v4, :cond_0

    .line 12
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060139

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    :goto_0
    new-instance v7, Landroid/graphics/RectF;

    sub-int v4, v0, v2

    int-to-float v4, v4

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-direct {v7, v4, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 15
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I

    mul-int/lit16 v2, v2, 0x168

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    div-int/2addr v2, v4

    int-to-float v9, v2

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 16
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 21
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I

    int-to-float v2, v2

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 22
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 23
    iget-boolean v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->j:I

    if-nez v5, :cond_1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    div-float/2addr v4, v3

    sub-float v2, v1, v4

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080162

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 26
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method public setCricleColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "max not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 3
    :try_start_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    if-le p1, v0, :cond_1

    .line 4
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    if-gt p1, v0, :cond_2

    .line 6
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 8
    :cond_2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRoundWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    return-void
.end method

.method public setTextIsDisplayable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    return-void
.end method
