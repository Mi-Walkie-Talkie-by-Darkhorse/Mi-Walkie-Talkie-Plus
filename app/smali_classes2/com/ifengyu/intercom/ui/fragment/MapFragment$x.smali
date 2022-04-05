.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;
.super Lcom/ifengyu/intercom/ui/baseui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/b<",
        "Lcom/ifengyu/intercom/ui/fragment/MapFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const v2, 0x7f110151

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    const v1, 0x7f110150

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcu_language_type_english"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcu_language_type_chinese"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    iget-object p1, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/g/a;->c(Lcom/ifengyu/intercom/g/d/b;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$d;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$d;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/g/a;->d(Lcom/ifengyu/intercom/g/d/b;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object p2

    sget-object v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v1, v2, p2, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;I)V

    :goto_0
    return-void
.end method

.method private b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 4

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    const v1, 0x8f03

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_3
    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_4
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_6
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/a;->i()V

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/b;->h()V

    :cond_8
    :goto_5
    return-void
.end method

.method private c(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg2:I

    const v1, 0x8f03

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->g()I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    const v3, 0x7f1100e2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_3

    invoke-static {p2, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    :cond_3
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->l()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    :cond_5
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->r(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_7
    :goto_2
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/a;->j()V

    goto :goto_3

    :cond_8
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->q(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/map/b;->i()V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1f4

    const v3, 0x7f080191

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;->c(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    const v0, 0x7f1102fa

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$b;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-object p1, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f0800f8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    const v0, 0x7f1102fb

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p1, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;->b(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$x;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    return-void
.end method
