.class public Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseActivity;


# instance fields
.field private m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "channel"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "channel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/ifengyu/intercom/lite/c/b/b;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/lite/c/b/b;->d(I)Lcom/ifengyu/intercom/lite/c/b/b;

    const p1, 0x7f11018c

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/c/b/b;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/b;

    new-instance p1, Lcom/ifengyu/intercom/lite/old/d;

    invoke-direct {p1, p0, p3}, Lcom/ifengyu/intercom/lite/old/d;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;Z)V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/c/b/b;->a(Lcom/ifengyu/intercom/lite/c/b/b$c;)Lcom/ifengyu/intercom/lite/c/b/b;

    const p1, 0x7f1200fc

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;ZII)V
    .locals 3

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    move-object p1, v0

    check-cast p1, Lcom/ifengyu/intercom/lite/c/b/f;

    sget-object v1, Lcom/ifengyu/intercom/lite/b/a;->a:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/c/b/f;->a([Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/f;

    sget-object v1, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/c/b/f;->a([[Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/f;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/c/b/f;->d(I)Lcom/ifengyu/intercom/lite/c/b/f;

    invoke-virtual {p1, p4}, Lcom/ifengyu/intercom/lite/c/b/f;->e(I)Lcom/ifengyu/intercom/lite/c/b/f;

    sget-object p3, Lcom/ifengyu/intercom/lite/old/a;->a:Lcom/ifengyu/intercom/lite/old/a;

    const/4 p4, 0x0

    const v1, 0x7f110093

    const/4 v2, 0x2

    invoke-virtual {p1, p4, v1, v2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/lite/c/b/f;

    new-instance p3, Lcom/ifengyu/intercom/lite/old/c;

    invoke-direct {p3, p0, v0, p2}, Lcom/ifengyu/intercom/lite/old/c;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;Lcom/ifengyu/intercom/lite/c/b/f;Z)V

    const p2, 0x7f11009c

    invoke-virtual {p1, p4, p2, p4, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast p1, Lcom/ifengyu/intercom/lite/c/b/f;

    const p2, 0x7f1200fc

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private x()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v1

    const v2, 0x7f110093

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(II)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v2

    const v3, 0x7f11009c

    invoke-virtual {v1, v3, v2}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->c(II)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v2, Lcom/ifengyu/intercom/lite/old/e;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/old/e;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/lite/old/b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/old/b;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v3, 0x7f110186

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->z()V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    const-string v3, "channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->finish()V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveTone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendTone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/c/b/f;ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/c/b/f;->e()I

    move-result p4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/c/b/f;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/c/b/f;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneType(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneValue(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, p4}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneType(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneValue(I)V

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p3}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic a(ZLcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object p3, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object p3, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p3}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->y()V

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

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f110117

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneType()I

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneValue()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Ljava/lang/String;ZII)V

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f110116

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendFreq()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f11029c

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneType()I

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneValue()I

    move-result v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Ljava/lang/String;ZII)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    const p1, 0x7f11029b

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveFreq()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    :sswitch_4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->m:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->clear()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->z()V

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->x()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteChannelEditActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
