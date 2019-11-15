.class Lcom/ifengyu/library/widget/view/SwitchButton$3;
.super Ljava/lang/Object;
.source "SwitchButton.java"

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

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Lcom/ifengyu/library/widget/view/SwitchButton;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->l(Lcom/ifengyu/library/widget/view/SwitchButton;)F

    move-result v1

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->n(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->o(Lcom/ifengyu/library/widget/view/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;Z)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton$3;->a:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->n(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
