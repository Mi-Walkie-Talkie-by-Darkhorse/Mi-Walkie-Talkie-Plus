.class Lcom/yalantis/ucrop/UCropActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yalantis/ucrop/view/TransformImageView$b;


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

    iput-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropActivity;->a(Lcom/yalantis/ucrop/UCropActivity;)Lcom/yalantis/ucrop/view/UCropView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropActivity;->b(Lcom/yalantis/ucrop/UCropActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0, v1}, Lcom/yalantis/ucrop/UCropActivity;->a(Lcom/yalantis/ucrop/UCropActivity;Z)Z

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->b(Lcom/yalantis/ucrop/UCropActivity;F)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->a(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onRotate(F)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropActivity$a;->a:Lcom/yalantis/ucrop/UCropActivity;

    invoke-static {v0, p1}, Lcom/yalantis/ucrop/UCropActivity;->a(Lcom/yalantis/ucrop/UCropActivity;F)V

    return-void
.end method
