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

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const v3, -0xff0100

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    const/4 v1, 0x2

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCricleColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    return v0
.end method

.method public getCricleProgressColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    monitor-enter p0

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

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    int-to-float v0, v6

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v1, v6

    int-to-float v2, v6

    int-to-float v3, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    sub-int v2, v6, v0

    int-to-float v2, v2

    sub-int v3, v6, v0

    int-to-float v3, v3

    add-int v5, v6, v0

    int-to-float v5, v5

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->j:I

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v6

    div-float/2addr v1, v7

    sub-float v1, v2, v1

    int-to-float v2, v6

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    sub-float/2addr v2, v7

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->a:Landroid/graphics/Paint;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020145

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v6, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v6, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setCricleColor(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->b:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->c:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-gez p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progress not less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    if-le p1, v0, :cond_2

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->g:I

    if-gt p1, v0, :cond_3

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->h:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->postInvalidate()V

    :cond_3
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setRoundWidth(F)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->f:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->d:I

    return-void
.end method

.method public setTextIsDisplayable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->i:Z

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/RoundProgressBarView;->e:F

    return-void
.end method
