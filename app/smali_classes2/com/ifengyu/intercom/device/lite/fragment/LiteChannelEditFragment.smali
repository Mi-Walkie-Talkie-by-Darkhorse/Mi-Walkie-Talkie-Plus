.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LiteChannelEditFragment.java"


# instance fields
.field mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a6
    .end annotation
.end field

.field mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090251
    .end annotation
.end field

.field mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090252
    .end annotation
.end field

.field mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090254
    .end annotation
.end field

.field mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090255
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field mTvDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ca
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/models/ChannelModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private g3()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v1

    const v2, 0x7f1100bd

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->l(II)Landroid/widget/Button;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v2

    const v3, 0x7f1100ce

    invoke-virtual {v1, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->o(II)Landroid/widget/Button;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06019f

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0601a0

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/q;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/q;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/s;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/fragment/s;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    return-void
.end method

.method private synthetic h3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->r3()V

    return-void
.end method

.method private synthetic l3(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object p3, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic n3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic o3(Lcom/ifengyu/intercom/m/b/h;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/h;->I()I

    move-result p4

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/h;->K()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/m/b/h;->J()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static q3(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    new-instance p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private r3()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    const-string v3, "channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/qmuiteam/qmui/arch/b;->u2(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o2()V

    return-void
.end method

.method private s3(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/d;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->y(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/m/b/c;

    const p1, 0x7f110228

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/m/b/c;->Q(Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/c;

    new-instance p1, Lcom/ifengyu/intercom/device/lite/fragment/t;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/device/lite/fragment/t;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/m/b/c;->O(Lcom/ifengyu/intercom/m/b/c$c;)Lcom/ifengyu/intercom/m/b/c;

    const p1, 0x7f120100

    .line 5
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private t3(Ljava/lang/String;ZII)V
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/h;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/h;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->y(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object p1, v0

    check-cast p1, Lcom/ifengyu/intercom/m/b/h;

    sget-object v1, Lcom/ifengyu/intercom/l/a/c/b;->a:[Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/m/b/h;->M([Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/h;

    sget-object v1, Lcom/ifengyu/intercom/l/a/c/b;->b:[[Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/m/b/h;->O([[Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/h;

    .line 5
    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/m/b/h;->L(I)Lcom/ifengyu/intercom/m/b/h;

    .line 6
    invoke-virtual {p1, p4}, Lcom/ifengyu/intercom/m/b/h;->N(I)Lcom/ifengyu/intercom/m/b/h;

    sget-object p3, Lcom/ifengyu/intercom/device/lite/fragment/r;->a:Lcom/ifengyu/intercom/device/lite/fragment/r;

    const/4 p4, 0x0

    const v1, 0x7f1100bd

    const/4 v2, 0x2

    .line 7
    invoke-virtual {p1, p4, v1, v2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/m/b/h;

    new-instance p3, Lcom/ifengyu/intercom/device/lite/fragment/u;

    invoke-direct {p3, p0, v0, p2}, Lcom/ifengyu/intercom/device/lite/fragment/u;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;Lcom/ifengyu/intercom/m/b/h;Z)V

    const p2, 0x7f1100c6

    .line 8
    invoke-virtual {p1, p4, p2, p4, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/m/b/h;

    const p2, 0x7f120100

    .line 9
    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private u3()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveTone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendTone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected E2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/utils/e;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v2, 0x7f110223

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getLiteDisplaySeq()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->q(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->u3()V

    :cond_1
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->g3()V

    return-object v0
.end method

.method public synthetic i3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->h3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->l3(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090251,
            0x7f090254,
            0x7f090252,
            0x7f090255,
            0x7f0900a6
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f1101a4

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v2

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->t3(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f1101a3

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->s3(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f110333

    .line 9
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v2

    .line 11
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->t3(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 12
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f110332

    .line 13
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->s3(Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->clear()V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->u3()V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a6 -> :sswitch_4
        0x7f090251 -> :sswitch_3
        0x7f090252 -> :sswitch_2
        0x7f090254 -> :sswitch_1
        0x7f090255 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic p3(Lcom/ifengyu/intercom/m/b/h;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->o3(Lcom/ifengyu/intercom/m/b/h;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method
