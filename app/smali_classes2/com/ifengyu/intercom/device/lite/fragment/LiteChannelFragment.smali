.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;
.super Lcom/ifengyu/intercom/ui/base/k;
.source "LiteChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/device/lite/e/l;

.field private B:Lcom/ifengyu/intercom/l/a/b/c/u;

.field mContentBoard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090111
    .end annotation
.end field

.field mEmptyBoard:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090197
    .end annotation
.end field

.field mLlChannelBoard:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029c
    .end annotation
.end field

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a5
    .end annotation
.end field

.field mRlChannelBackup:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903c1
    .end annotation
.end field

.field mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09049b
    .end annotation
.end field

.field mTvBoardDetail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bc
    .end annotation
.end field

.field mTvBoardTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904bd
    .end annotation
.end field

.field mTvChannelName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c1
    .end annotation
.end field

.field mTvReceiveFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904f2
    .end annotation
.end field

.field mTvSendFreq:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ff
    .end annotation
.end field

.field private z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/k;-><init>()V

    return-void
.end method

.method private synthetic B3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/device/lite/fragment/j1;->f4()Lcom/ifengyu/intercom/device/lite/fragment/j1;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/arch/b;->v2(Lcom/qmuiteam/qmui/arch/b;)I

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic D3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public static E3(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    new-instance p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private F3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveFreq(I)V

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendFreq(I)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneType(I)V

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setReceiveToneValue(I)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneType(I)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getSendToneValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/models/ChannelModel;->setSendToneValue(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/o;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private G3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100d2

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/v;->a:Lcom/ifengyu/intercom/device/lite/fragment/v;

    const/4 v2, 0x0

    const v3, 0x7f1100bd

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/f0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/f0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    const v3, 0x7f1100c6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private H3()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100d3

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    sget-object v1, Lcom/ifengyu/intercom/device/lite/fragment/e0;->a:Lcom/ifengyu/intercom/device/lite/fragment/e0;

    const/4 v2, 0x0

    const v3, 0x7f110079

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/c0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/c0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    const v3, 0x7f11026b

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private I3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->isEmpty()Z

    move-result v0

    const v1, 0x7f11021e

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getLiteDisplaySeq()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getLiteDisplaySeq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget-object p1, Lcom/ifengyu/intercom/j/a;->c:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/s;->w(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method static synthetic g3(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->G3()V

    return-void
.end method

.method private i3()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/l/a/b/c/u;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->B:Lcom/ifengyu/intercom/l/a/b/c/u;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->i()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/z;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/z;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/e/l;

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/w;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/w;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->n()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/b0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/b0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->m()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/d0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/d0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->r()Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/a0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/j;Landroidx/lifecycle/p;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->I()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/e/l;->J()V

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/y;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/fragment/y;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/arch/b;->t2(Ljava/lang/Runnable;Z)V

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/x;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/x;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/l/a/d/c;->b(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private synthetic j3(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->d2()V

    return-void
.end method

.method private synthetic l3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->H3()V

    :cond_0
    return-void
.end method

.method private synthetic n3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->I3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->r(I)V

    :cond_0
    return-void
.end method

.method private synthetic p3(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->u(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->e(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const v0, 0x7f110241

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->f(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/h1;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/device/lite/fragment/h1;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private synthetic r3(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->W2()V

    :cond_0
    return-void
.end method

.method private synthetic t3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/lite/e/l;->H(I)V

    return-void
.end method

.method private synthetic v3(Lcom/ifengyu/intercom/device/lite/event/LiteEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->IMPORTED:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/lite/e/l;->H(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/e/l;->I()V

    :cond_0
    return-void
.end method

.method public static synthetic x3(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->F3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method static synthetic y3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method private synthetic z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->h()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/models/ConfigFileModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/models/ConfigFileModel;-><init>()V

    .line 5
    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/lite/e/l;->p()Landroidx/lifecycle/o;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/models/DeviceModel;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/ifengyu/intercom/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0x9

    .line 8
    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setFromDeviceType(I)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setCreateTime(J)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/models/ConfigFileModel;->setUpdateTime(J)V

    .line 11
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->B:Lcom/ifengyu/intercom/l/a/b/c/u;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/l/a/b/c/u;->f(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Lite_BackupClick_FromChannel"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public synthetic A3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public synthetic C3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->B3(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method protected E2()V
    .locals 2

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
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/lite/e/l;->o()Landroidx/lifecycle/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/o;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected e2()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->h3()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->i3()V

    return-object v0
.end method

.method protected h3()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0601a2

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->h()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    const v1, 0x7f080152

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setChangeAlphaWhenPress(Z)V

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/device/lite/fragment/g0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/fragment/g0;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/ifengyu/intercom/device/lite/base/recycler/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/ifengyu/intercom/device/lite/base/recycler/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$c;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/lite/base/recycler/c;->setOnItemClickListener(Lcom/ifengyu/intercom/device/lite/base/recycler/c$a;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->mRlChannelBackup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment$b;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected j2(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "channel"

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/models/ChannelModel;

    if-nez p1, :cond_3

    return-void

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/device/lite/e/l;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/device/lite/e/l;->M(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method public synthetic k3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->j3(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->l3(Lcom/ifengyu/intercom/models/ConfigFileModel;)V

    return-void
.end method

.method public synthetic o3(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->n3(Lcom/ifengyu/intercom/models/ChannelModel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/l/a/d/c;->d()Lcom/ifengyu/intercom/l/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/l/a/d/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic q3(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->p3(Ljava/util/List;)V

    return-void
.end method

.method public synthetic s3(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->r3(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic u3()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->t3()V

    return-void
.end method

.method public synthetic w3(Lcom/ifengyu/intercom/device/lite/event/LiteEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelFragment;->v3(Lcom/ifengyu/intercom/device/lite/event/LiteEvent;)V

    return-void
.end method
