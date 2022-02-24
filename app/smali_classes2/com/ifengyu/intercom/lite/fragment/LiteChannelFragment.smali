.class public Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;
.super Lcom/ifengyu/intercom/lite/base/e;
.source "LiteChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/lite/h/h0;

.field private B:Lcom/ifengyu/intercom/lite/h/g0;

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

.field private z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/base/e;-><init>()V

    return-void
.end method

.method private B()V
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
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/p;->setValue(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/h/h0;->b(I)V

    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/g0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->B:Lcom/ifengyu/intercom/lite/h/g0;

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/g0;->d()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/y0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/y0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/x;->a(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/h/h0;

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/s0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/s0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->f()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/p0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/p0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->e()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/r0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/r0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->j()Landroidx/lifecycle/p;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/x0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/x0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/k;Landroidx/lifecycle/q;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->l()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->m()V

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/lite/event/LiteEvent;

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/q0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/q0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;Ljava/lang/Class;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method private D()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017a

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/w0;->a:Lcom/ifengyu/intercom/lite/fragment/w0;

    const/4 v2, 0x0

    const v3, 0x7f110093

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/u0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/u0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    const v3, 0x7f11009c

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private E()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11017b

    .line 2
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    sget-object v1, Lcom/ifengyu/intercom/lite/fragment/t0;->a:Lcom/ifengyu/intercom/lite/fragment/t0;

    const/4 v2, 0x0

    const v3, 0x7f110061

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/o0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/o0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    const v3, 0x7f1101e6

    .line 4
    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->D()V

    return-void
.end method

.method public static synthetic a(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->b(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method private b(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveFreq(I)V

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendFreq(I)V

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneType(I)V

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getReceiveToneValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setReceiveToneValue(I)V

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneType(I)V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getSendToneValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->setSendToneValue(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/h/h0;->g()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/p;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->isEmpty()Z

    move-result v0

    const v1, 0x7f110177

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySeq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplayReceiveFreq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getDisplaySendFreq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget-object p1, Lcom/ifengyu/intercom/i/p;->b:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/utils/h;->a(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f060191

    invoke-static {v1}, Lcom/ifengyu/library/a/m;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->a()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    const v1, 0x7f080109

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;->setChangeAlphaWhenPress(Z)V

    .line 5
    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/v0;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/fragment/v0;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/ifengyu/intercom/lite/base/recycler/LinearLayoutManagerWapper;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->setOnItemClickListener(Lcom/ifengyu/intercom/lite/base/recycler/c$a;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRlChannelBackup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 17
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p2, "channel"

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/lite/models/ChannelModel;

    if-nez p1, :cond_3

    return-void

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    .line 20
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/lite/h/h0;->a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/event/LiteEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;->a:Lcom/ifengyu/intercom/lite/event/LiteEvent;

    if-ne p1, v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/h/h0;->b(I)V

    .line 16
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->l()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->c(Lcom/ifengyu/intercom/lite/models/ChannelModel;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/models/ChannelModel;->getChannelSeq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->c(I)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->E()V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 3

    .line 21
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/base/recycler/c;->e()Ljava/util/List;

    move-result-object p2

    .line 22
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->z()V

    .line 24
    new-instance v0, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;-><init>()V

    .line 25
    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setChannelModelList(Ljava/util/List;)V

    .line 26
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A:Lcom/ifengyu/intercom/lite/h/h0;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/h/h0;->h()Landroidx/lifecycle/p;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setFrom(Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setCreateTime(J)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/lite/models/ConfigFileModel;->setUpdateTime(J)V

    .line 30
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->B:Lcom/ifengyu/intercom/lite/h/g0;

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/lite/h/g0;->a(Lcom/ifengyu/intercom/lite/models/ConfigFileModel;)V

    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object p2

    const-string v0, "userId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Lite_BackupClick_FromChannel"

    invoke-static {p2, v0, p1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;)V
    .locals 4

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->z:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment$c;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->b(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const v0, 0x7f1101a9

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog$Builder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/ifengyu/intercom/lite/fragment/p1;

    invoke-direct {v1, p1}, Lcom/ifengyu/intercom/lite/fragment/p1;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/arch/b;->o()V

    return-void
.end method

.method public synthetic b(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->newInstance()Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    .line 17
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->x()V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/base/e;->y()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/qmuiteam/qmui/arch/b;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/lite/utils/j;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected p()Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->A()V

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->C()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->B()V

    return-object v0
.end method
