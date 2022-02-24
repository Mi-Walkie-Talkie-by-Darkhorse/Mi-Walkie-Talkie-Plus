.class public Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;
.super Lcom/ifengyu/intercom/lite/base/e;
.source "LiteChannelEditFragment.java"


# instance fields
.field mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090095
    .end annotation
.end field

.field mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f5
    .end annotation
.end field

.field mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f6
    .end annotation
.end field

.field mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f8
    .end annotation
.end field

.field mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f9
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field mTvDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090466
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/lite/models/ChannelModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    .line 3
    invoke-static {v0}, Lcom/ifengyu/intercom/lite/utils/i;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    :cond_0
    return-void
.end method

.method private B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f110093

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(II)Landroid/widget/Button;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v2

    const v3, 0x7f1100a2

    invoke-virtual {v1, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c(II)Landroid/widget/Button;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06018b

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06018c

    invoke-static {v2, v3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/k0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/k0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/l0;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/fragment/l0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v3, 0x7f110186

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->D()V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    const-string v3, "channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/qmuiteam/qmui/arch/b;->a(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->t()V

    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveTone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendTone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    new-instance p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 25
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/c;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/lite/c/b/b;

    const p1, 0x7f11018c

    .line 27
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/c/b/b;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/b;

    new-instance p1, Lcom/ifengyu/intercom/lite/fragment/n0;

    invoke-direct {p1, p0, p2}, Lcom/ifengyu/intercom/lite/fragment/n0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;Z)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/c/b/b;->a(Lcom/ifengyu/intercom/lite/c/b/b$c;)Lcom/ifengyu/intercom/lite/c/b/b;

    const p1, 0x7f1200fc

    .line 29
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;ZII)V
    .locals 3

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/f;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object p1, v0

    check-cast p1, Lcom/ifengyu/intercom/lite/c/b/f;

    sget-object v1, Lcom/ifengyu/intercom/lite/b/a;->a:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/c/b/f;->a([Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/f;

    sget-object v1, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/c/b/f;->a([[Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/f;

    .line 9
    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/c/b/f;->d(I)Lcom/ifengyu/intercom/lite/c/b/f;

    .line 10
    invoke-virtual {p1, p4}, Lcom/ifengyu/intercom/lite/c/b/f;->e(I)Lcom/ifengyu/intercom/lite/c/b/f;

    sget-object p3, Lcom/ifengyu/intercom/lite/fragment/j0;->a:Lcom/ifengyu/intercom/lite/fragment/j0;

    const/4 p4, 0x0

    const v1, 0x7f110093

    const/4 v2, 0x2

    .line 11
    invoke-virtual {p1, p4, v1, v2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/lite/c/b/f;

    new-instance p3, Lcom/ifengyu/intercom/lite/fragment/m0;

    invoke-direct {p3, p0, v0, p2}, Lcom/ifengyu/intercom/lite/fragment/m0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;Lcom/ifengyu/intercom/lite/c/b/f;Z)V

    const p2, 0x7f11009c

    .line 12
    invoke-virtual {p1, p4, p2, p4, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/lite/c/b/f;

    const p2, 0x7f1200fc

    .line 13
    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/c/b/f;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/c/b/f;->e()I

    move-result p4

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/c/b/f;->g()I

    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/c/b/f;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneType(I)V

    .line 19
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneValue(I)V

    .line 20
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneType(I)V

    .line 22
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneValue(I)V

    .line 23
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_0
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic a(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    .line 31
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    .line 34
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object p3, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    .line 36
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    .line 39
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object p3, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->C()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901f5,
            0x7f0901f8,
            0x7f0901f6,
            0x7f0901f9,
            0x7f090095
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
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f110117

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneType()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneValue()I

    move-result v2

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f110116

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f11029c

    .line 9
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneType()I

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneValue()I

    move-result v2

    .line 11
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(Ljava/lang/String;ZII)V

    goto :goto_0

    .line 12
    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f11029b

    .line 13
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->z:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->clear()V

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->D()V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090095 -> :sswitch_4
        0x7f0901f5 -> :sswitch_3
        0x7f0901f6 -> :sswitch_2
        0x7f0901f8 -> :sswitch_1
        0x7f0901f9 -> :sswitch_0
    .end sparse-switch
.end method

.method protected p()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->A()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelEditFragment;->B()V

    return-object v0
.end method
