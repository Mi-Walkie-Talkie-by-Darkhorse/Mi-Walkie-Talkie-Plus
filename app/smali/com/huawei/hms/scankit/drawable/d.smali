.class Lcom/huawei/hms/scankit/drawable/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScanDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/drawable/ScanDrawable;->e()V
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
    iput-object p1, p0, Lcom/huawei/hms/scankit/drawable/d;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/d;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {p1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->a(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/d;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {v1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->d(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;Z)Z

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/scankit/drawable/d;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {v1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->d(Lcom/huawei/hms/scankit/drawable/ScanDrawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3eb33333    # 0.35f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/d;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;F)F

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/drawable/d;->a:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/ze;->a(F)F

    move-result v0

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->b(Lcom/huawei/hms/scankit/drawable/ScanDrawable;F)F

    :cond_1
    :goto_0
    return-void
.end method
