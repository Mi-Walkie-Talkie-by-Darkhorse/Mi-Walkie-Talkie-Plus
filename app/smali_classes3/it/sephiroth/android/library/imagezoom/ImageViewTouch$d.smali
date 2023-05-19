.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->a:Z

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v1, v1, v2

    .line 3
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v3, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->F:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4
    iget-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->a:Z

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v4, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Z

    .line 6
    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->C(FFF)V

    .line 8
    iget-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput v4, p1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->B:I

    .line 9
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return v4

    :cond_0
    if-nez v3, :cond_1

    .line 10
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$d;->a:Z

    :cond_1
    return v4
.end method
