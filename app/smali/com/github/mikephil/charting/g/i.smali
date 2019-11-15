.class public abstract Lcom/github/mikephil/charting/g/i;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final a:D

.field public static final b:F

.field private static c:Landroid/util/DisplayMetrics;

.field private static d:I

.field private static e:I

.field private static f:Landroid/graphics/Rect;

.field private static g:Landroid/graphics/Paint$FontMetrics;

.field private static h:Landroid/graphics/Rect;

.field private static final i:[I

.field private static j:Lcom/github/mikephil/charting/c/f;

.field private static k:Landroid/graphics/Rect;

.field private static l:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x32

    sput v0, Lcom/github/mikephil/charting/g/i;->d:I

    const/16 v0, 0x1f40

    sput v0, Lcom/github/mikephil/charting/g/i;->e:I

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lcom/github/mikephil/charting/g/i;->a:D

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Lcom/github/mikephil/charting/g/i;->b:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/g/i;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/g/i;->g:Landroid/graphics/Paint$FontMetrics;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/g/i;->h:Landroid/graphics/Rect;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/mikephil/charting/g/i;->i:[I

    invoke-static {}, Lcom/github/mikephil/charting/g/i;->e()Lcom/github/mikephil/charting/c/f;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/g/i;->j:Lcom/github/mikephil/charting/c/f;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/g/i;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/g/i;->l:Landroid/graphics/Paint$FontMetrics;

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method public static a(D)F
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    cmpg-double v0, p0, v2

    if-gez v0, :cond_2

    neg-double v0, p0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v2, v0

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v1, v2

    div-float v0, v1, v0

    goto :goto_0

    :cond_2
    move-wide v0, p0

    goto :goto_1
.end method

.method public static a(F)F
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/g/i;->c:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    const-string v0, "MPChartLib-Utils"

    const-string v1, "Utils NOT INITIALIZED. You need to call Utils.init(...) at least once before calling Utils.convertDpToPixel(...). Otherwise conversion does not take place."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0

    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/g/i;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, v0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Paint;)F
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/i;->g:Landroid/graphics/Paint$FontMetrics;

    invoke-static {p0, v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a()Lcom/github/mikephil/charting/c/f;
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/i;->j:Lcom/github/mikephil/charting/c/f;

    return-object v0
.end method

.method public static a(FFF)Lcom/github/mikephil/charting/g/b;
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr v0, p2

    invoke-static {p0, p1, v0}, Lcom/github/mikephil/charting/g/i;->b(FFF)Lcom/github/mikephil/charting/g/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/g/i;->d:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/g/i;->e:I

    const-string v0, "MPChartLib-Utils"

    const-string v1, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    sput v1, Lcom/github/mikephil/charting/g/i;->d:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    sput v0, Lcom/github/mikephil/charting/g/i;->e:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/g/i;->c:Landroid/util/DisplayMetrics;

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;Lcom/github/mikephil/charting/g/e;F)V
    .locals 7

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    sget-object v0, Lcom/github/mikephil/charting/g/i;->l:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v3, Lcom/github/mikephil/charting/g/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v0, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object v0, Lcom/github/mikephil/charting/g/i;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, v5, v0

    sget-object v0, Lcom/github/mikephil/charting/g/i;->l:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    add-float/2addr v0, v5

    invoke-virtual {p4}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    cmpl-float v4, p6, v5

    if-eqz v4, :cond_2

    sget-object v4, Lcom/github/mikephil/charting/g/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float/2addr v1, v4

    mul-float v4, v2, v6

    sub-float/2addr v0, v4

    iget v4, p5, Lcom/github/mikephil/charting/g/e;->a:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    iget v4, p5, Lcom/github/mikephil/charting/g/e;->b:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/github/mikephil/charting/g/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4, v2, p6}, Lcom/github/mikephil/charting/g/i;->a(FFF)Lcom/github/mikephil/charting/g/b;

    move-result-object v2

    iget v4, v2, Lcom/github/mikephil/charting/g/b;->a:F

    iget v5, p5, Lcom/github/mikephil/charting/g/e;->a:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr p2, v4

    iget v4, v2, Lcom/github/mikephil/charting/g/b;->b:F

    iget v5, p5, Lcom/github/mikephil/charting/g/e;->b:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr p3, v4

    invoke-static {v2}, Lcom/github/mikephil/charting/g/b;->a(Lcom/github/mikephil/charting/g/b;)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0, p1, v1, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    :cond_2
    iget v4, p5, Lcom/github/mikephil/charting/g/e;->a:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    iget v4, p5, Lcom/github/mikephil/charting/g/e;->b:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    :cond_3
    sget-object v4, Lcom/github/mikephil/charting/g/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p5, Lcom/github/mikephil/charting/g/e;->a:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    iget v4, p5, Lcom/github/mikephil/charting/g/e;->b:F

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    :cond_4
    add-float/2addr v1, p2

    add-float/2addr v0, p3

    invoke-virtual {p0, p1, v1, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;Lcom/github/mikephil/charting/g/b;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/github/mikephil/charting/g/i;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p2, Lcom/github/mikephil/charting/g/b;->a:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p2, Lcom/github/mikephil/charting/g/b;->b:F

    return-void
.end method

.method public static a(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V
    .locals 7

    const/16 v0, 0x3e8

    sget v1, Lcom/github/mikephil/charting/g/i;->e:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_2

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public static a(Lcom/github/mikephil/charting/g/e;FFLcom/github/mikephil/charting/g/e;)V
    .locals 6

    iget v0, p0, Lcom/github/mikephil/charting/g/e;->a:F

    float-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lcom/github/mikephil/charting/g/e;->a:F

    iget v0, p0, Lcom/github/mikephil/charting/g/e;->b:F

    float-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p3, Lcom/github/mikephil/charting/g/e;->b:F

    return-void
.end method

.method public static b(D)D
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    add-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static b(Landroid/graphics/Paint;)F
    .locals 1

    sget-object v0, Lcom/github/mikephil/charting/g/i;->g:Landroid/graphics/Paint$FontMetrics;

    invoke-static {p0, v0}, Lcom/github/mikephil/charting/g/i;->b(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetrics;)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    return v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/github/mikephil/charting/g/i;->d:I

    return v0
.end method

.method public static b(F)I
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/i;->a(D)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static b(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/github/mikephil/charting/g/i;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public static b(FFF)Lcom/github/mikephil/charting/g/b;
    .locals 4

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/g/b;->a(FF)Lcom/github/mikephil/charting/g/b;

    move-result-object v0

    return-object v0
.end method

.method public static c(F)F
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, v1

    goto :goto_0

    :cond_0
    rem-float v0, p0, v1

    return v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/github/mikephil/charting/g/i;->e:I

    return v0
.end method

.method public static c(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/g/b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/github/mikephil/charting/g/b;->a(FF)Lcom/github/mikephil/charting/g/b;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/github/mikephil/charting/g/i;->a(Landroid/graphics/Paint;Ljava/lang/String;Lcom/github/mikephil/charting/g/b;)V

    return-object v0
.end method

.method public static d()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static e()Lcom/github/mikephil/charting/c/f;
    .locals 2

    new-instance v0, Lcom/github/mikephil/charting/c/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/c/c;-><init>(I)V

    return-object v0
.end method
