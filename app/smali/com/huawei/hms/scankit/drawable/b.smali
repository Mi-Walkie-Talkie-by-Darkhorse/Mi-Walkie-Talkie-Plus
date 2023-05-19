.class Lcom/huawei/hms/scankit/drawable/b;
.super Ljava/lang/Object;
.source "ScanDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/drawable/ScanDrawable;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {v2}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;I)I

    const v0, 0x3ec72b02    # 0.389f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b()Landroid/view/animation/Interpolator;

    move-result-object v2

    div-float/2addr p1, v0

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;F)F

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->c()Landroid/view/animation/Interpolator;

    move-result-object v2

    sub-float/2addr p1, v0

    const v0, 0x3f1c6a7f    # 0.611f

    div-float/2addr p1, v0

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;F)F

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/b;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
