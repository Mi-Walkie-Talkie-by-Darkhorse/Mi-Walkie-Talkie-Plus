.class Lcom/yalantis/ucrop/UCropActivity$1;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/UCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/UCropActivity;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropActivity;->a(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/UCropView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropActivity;->b(Lcom/yalantis/ucrop/UCropActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0, v4}, Lcom/yalantis/ucrop/UCropActivity;->a(Lcom/yalantis/ucrop/UCropActivity;Z)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/UCropActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->a(Lcom/yalantis/ucrop/UCropActivity;F)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0}, Lcom/yalantis/ucrop/UCropActivity;->finish()V

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$1;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->b(Lcom/yalantis/ucrop/UCropActivity;F)V

    return-void
.end method
