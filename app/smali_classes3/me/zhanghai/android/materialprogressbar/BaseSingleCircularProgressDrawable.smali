.class abstract Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;
.super Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;
.source "BaseSingleCircularProgressDrawable.java"


# static fields
.field private static final RECT_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PADDED_BOUND:Landroid/graphics/RectF;

.field private static final RECT_PROGRESS:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v4, -0x3e400000    # -24.0f

    const/high16 v1, -0x3e580000    # -21.0f

    const/high16 v3, -0x3e680000    # -19.0f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lme/zhanghai/android/materialprogressbar/BaseProgressDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6

    sget-object v1, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PROGRESS:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float v2, v0, p3

    const/4 v4, 0x0

    move-object v0, p1

    move v3, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->mUseIntrinsicPadding:Z

    if-eqz v0, :cond_0

    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_PADDED_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0, p1, p4}, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->onDrawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    int-to-float v0, p2

    sget-object v1, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    sget-object v2, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    sget-object v0, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    sget-object v1, Lme/zhanghai/android/materialprogressbar/BaseSingleCircularProgressDrawable;->RECT_BOUND:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected abstract onDrawRing(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method protected onPreparePaint(Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
