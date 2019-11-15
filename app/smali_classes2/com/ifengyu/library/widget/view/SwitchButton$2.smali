.class Lcom/ifengyu/library/widget/view/SwitchButton$2;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/view/SwitchButton;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->g(Lcom/ifengyu/library/widget/view/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v3

    iget v3, v3, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v4

    iget v4, v4, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget v2, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v3

    iget v3, v3, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v4

    iget v4, v4, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget v2, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v3

    iget v3, v3, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v4

    iget v4, v4, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->g(Lcom/ifengyu/library/widget/view/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v3

    iget v3, v3, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v4

    iget v4, v4, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget v2, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v3

    iget v3, v3, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v4

    iget v4, v4, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iget v0, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->h(Lcom/ifengyu/library/widget/view/SwitchButton;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->i(Lcom/ifengyu/library/widget/view/SwitchButton;)F

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->h(Lcom/ifengyu/library/widget/view/SwitchButton;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->g(Lcom/ifengyu/library/widget/view/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->j(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->k(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->l(Lcom/ifengyu/library/widget/view/SwitchButton;)F

    move-result v2

    mul-float/2addr v2, v1

    iput v2, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->g(Lcom/ifengyu/library/widget/view/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton$2;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->m(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
