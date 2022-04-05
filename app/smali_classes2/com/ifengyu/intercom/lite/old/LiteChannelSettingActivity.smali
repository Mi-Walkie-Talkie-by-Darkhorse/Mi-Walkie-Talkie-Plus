.class public Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;
.super Lcom/ifengyu/intercom/lite/base/BaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;
    }
.end annotation


# instance fields
.field private m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

.field mContentBoard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900eb
    .end annotation
.end field

.field mEmptyBoard:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field mLlChannelBoard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022c
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090339
    .end annotation
.end field

.field mRlChannelBackup:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090350
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090426
    .end annotation
.end field

.field mTvBoardDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045c
    .end annotation
.end field

.field mTvBoardTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045d
    .end annotation
.end field

.field mTvChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045f
    .end annotation
.end field

.field mTvReceiveFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090486
    .end annotation
.end field

.field mTvSendFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090493
    .end annotation
.end field

.field private n:Lcom/ifengyu/intercom/lite/models/ChannelModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;-><init>()V

    return-void
.end method

.method private A()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v0

    const v1, 0x7f110177

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTvChannelName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTvChannelName:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTvReceiveFreq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTvSendFreq:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTvReceiveFreq:Landroid/widget/TextView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTvSendFreq:Landroid/widget/TextView;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/lite/utils/h;->a(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->y()V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->v()V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->z()V

    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private y()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017a

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/old/h;->a:Lcom/ifengyu/intercom/lite/old/h;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/old/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/i;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V

    const v3, 0x7f11009c

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private z()V
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017b

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/old/k;->a:Lcom/ifengyu/intercom/lite/old/k;

    const/4 v2, 0x0

    const v3, 0x7f110061

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/old/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/f;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V

    const v3, 0x7f1101e6

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveFreq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendFreq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneType(I)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneValue(I)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneType(I)V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneValue(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveFreq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendFreq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneType(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneValue(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneType(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneValue(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->A()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->w()V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    new-instance p1, Lcom/ifengyu/intercom/lite/old/w;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/lite/old/w;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-static {p0}, Lcom/ifengyu/intercom/lite/old/LiteConfigFileActivity;->start(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "channel"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p2, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const p3, 0x7f110285

    invoke-static {p3}, Lcom/ifengyu/library/a/m;->b(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    new-instance p3, Lcom/ifengyu/intercom/lite/old/g;

    invoke-direct {p3, p0, p2, p1}, Lcom/ifengyu/intercom/lite/old/g;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    const-wide/16 p1, 0x3e8

    invoke-static {p3, p1, p2}, Lcom/ifengyu/library/a/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/lite/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->x()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected x()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f060191

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setChangeAlphaWhenPress(Z)V

    new-instance v2, Lcom/ifengyu/intercom/lite/old/j;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/old/j;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/d;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$a;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->setOnItemClickListener(Lcom/ifengyu/intercom/lite/base/recycler/c$a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->n:Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->m:Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$c;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c(I)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->A()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;->mRlChannelBackup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity$b;-><init>(Lcom/ifengyu/intercom/lite/old/LiteChannelSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
