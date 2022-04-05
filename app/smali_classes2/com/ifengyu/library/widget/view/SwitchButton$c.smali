.class Lcom/ifengyu/library/widget/view/SwitchButton$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->i(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->g(Lcom/ifengyu/library/widget/view/SwitchButton;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;Z)Z

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->f(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->j(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$e;

    move-result-object p1

    iput v1, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->c:I

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->j(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$e;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)F

    move-result v0

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->d:F

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$c;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
