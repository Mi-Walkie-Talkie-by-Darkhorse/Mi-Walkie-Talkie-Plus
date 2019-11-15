.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const v5, 0x7f090106

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const v2, 0x7f090107

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->h(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcu_language_type_english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcu_language_type_chinese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$3;->a:Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
