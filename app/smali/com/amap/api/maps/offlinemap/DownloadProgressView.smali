.class public Lcom/amap/api/maps/offlinemap/DownloadProgressView;
.super Landroid/view/View;
.source "DownloadProgressView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:Landroid/text/TextPaint;

.field private g:Landroid/text/TextPaint;

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v0, -0x10000

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->b:I

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->d:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, -0x10000

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->b:I

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->d:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/high16 v0, -0x10000

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->b:I

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->d:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    invoke-direct {p0, p2, p3}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->d:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->b:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->c:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->h:F

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->i:F

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore/util/ih$a;->a:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->a:Ljava/lang/String;

    const/4 v1, 0x3

    iget v2, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->b:I

    iget v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->d:F

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->d:F

    const/4 v1, 0x2

    iget v2, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->c:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->g:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->g:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->a()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getWidth()I

    move-result v4

    sub-int v0, v4, v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    sub-int/2addr v1, v3

    int-to-float v2, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    int-to-float v4, v0

    iget v5, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double v6, v2, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    double-to-int v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v9, v10, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->g:Landroid/text/TextPaint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    double-to-int v0, v4

    int-to-float v0, v0

    double-to-int v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->e:F

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/DownloadProgressView;->invalidate()V

    goto :goto_0
.end method
