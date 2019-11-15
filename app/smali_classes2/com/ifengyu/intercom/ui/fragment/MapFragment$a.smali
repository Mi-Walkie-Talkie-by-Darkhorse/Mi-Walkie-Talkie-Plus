.class Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "MapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/fragment/MapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/a",
        "<",
        "Lcom/ifengyu/intercom/ui/fragment/MapFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 5

    const v4, 0x7f090106

    const/4 v3, 0x1

    const v2, 0x7f090107

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, v3}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcu_language_type_english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

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

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$3;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$3;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->d(Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$4;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/a/a;->e(Lcom/ifengyu/intercom/a/b/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ad()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->l(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_1
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->d()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->f()V

    goto :goto_3
.end method

.method private c(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 5

    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v1, 0x1

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0900b7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    invoke-static {p2, v2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    :cond_0
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p2, v1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->c(Lcom/ifengyu/intercom/ui/fragment/MapFragment;Z)Z

    :cond_2
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->p(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->clearAnimation()V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    :cond_3
    :goto_2
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->m(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->n(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/a;->e()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_1

    :cond_7
    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleIsUnConnectLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;->setVisibility(I)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleReconnectImmediatelyBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->bleUnConnectCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_2

    :cond_8
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->o(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)Lcom/ifengyu/intercom/ui/map/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/map/b;->g()V

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const v3, 0x7f02016e

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->a(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0901e7

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/MainActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$1;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->locationShareIV:Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0901e6

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/MainActivity;->d(I)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$2;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a$2;-><init>(Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->b(Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->c(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MapFragment$a;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/fragment/MapFragment;)V

    return-void
.end method
