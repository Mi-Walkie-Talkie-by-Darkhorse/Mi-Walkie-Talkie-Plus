.class Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;
.super Lcom/ifengyu/intercom/ui/base/old/b;
.source "BleDeviceMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/old/b<",
        "Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Landroid/os/Message;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    const-string v1, "zh_cn"

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->E()I

    move-result p1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->D()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v2

    const-string v3, "seal"

    .line 5
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/ifengyu/intercom/n/a;->T(Ljava/lang/String;IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/c;

    invoke-direct {v0, p2}, Lcom/ifengyu/intercom/device/oldDevice/c;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    sget-object p2, Lcom/ifengyu/intercom/device/oldDevice/t;->a:Lcom/ifengyu/intercom/device/oldDevice/t;

    .line 7
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->L()I

    move-result p1

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->K()I

    move-result v0

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v2

    const-string v3, "shark"

    .line 11
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/ifengyu/intercom/n/a;->T(Ljava/lang/String;IILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/d;

    invoke-direct {v0, p2}, Lcom/ifengyu/intercom/device/oldDevice/d;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    sget-object p2, Lcom/ifengyu/intercom/device/oldDevice/t;->a:Lcom/ifengyu/intercom/device/oldDevice/t;

    .line 13
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->f()Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    move-result-object p2

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p2, v1, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->d(ZI)V

    :goto_0
    return-void
.end method

.method private c(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuUpdateImmediatelyBtn:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 5
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const v2, 0x7f1101f3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v0

    const v1, 0x7f1101f2

    if-eqz v0, :cond_5

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcu_language_type_english"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcu_language_type_chinese"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_6
    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateTV:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private e(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/16 v1, 0x9

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_2
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    .line 9
    :cond_4
    :goto_3
    iget-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    :goto_4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->c0()V

    .line 11
    :cond_5
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->S(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/ui/c/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 12
    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->S(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/ui/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/e;->t()V

    :cond_6
    return-void
.end method

.method private f(Landroid/os/Message;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->q()I

    move-result p1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f110152

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->titleBarRight:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->bottomChannelLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 8
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->mcuHaveUpdateLayout:Lcom/ifengyu/intercom/ui/widget/view/ShadowLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->b1()V

    .line 10
    :cond_3
    invoke-static {p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->S(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/ui/c/e;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-static {p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->S(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/ui/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/e;->u()V

    :cond_4
    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->J0(Z)V

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->T(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    invoke-static {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/http/entity/VersionInfo;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/http/entity/VersionInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->isHasNewVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/p/d0;->T0(Z)V

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->T(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    invoke-static {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->H(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;Lcom/ifengyu/intercom/http/entity/VersionInfo;)Lcom/ifengyu/intercom/http/entity/VersionInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;->d(Landroid/os/Message;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    return-void
.end method

.method public d(Landroid/os/Message;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1f4

    const v3, 0x7f08018f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;->f(Landroid/os/Message;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;->e(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f080135

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const p1, 0x7f1103a8

    .line 8
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 10
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o$b;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o$b;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p1, p2, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;->locationShareIV:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v0, 0x7f080136

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const p1, 0x7f1103a9

    .line 13
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v3}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 15
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o$a;

    invoke-direct {v0, p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;->c(Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity$o;->b(Landroid/os/Message;Lcom/ifengyu/intercom/device/oldDevice/BleDeviceMapActivity;)V

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
