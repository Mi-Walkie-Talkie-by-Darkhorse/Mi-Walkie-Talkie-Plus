.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result p1

    const v2, 0x7f110151

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result p1

    const v1, 0x7f110150

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mcu_language_type_english"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object p1

    const-string v3, "mcu_language_type_chinese"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$f;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
