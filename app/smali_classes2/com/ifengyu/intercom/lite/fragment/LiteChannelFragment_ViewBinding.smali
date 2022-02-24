.class public Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LiteChannelFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090486

    const-string v2, "field \'mTvReceiveFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090493

    const-string v2, "field \'mTvSendFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09022c

    const-string v2, "field \'mLlChannelBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mLlChannelBoard:Landroid/widget/RelativeLayout;

    .line 7
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090339

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045f

    const-string v2, "field \'mTvChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045d

    const-string v2, "field \'mTvBoardTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardTitle:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045c

    const-string v2, "field \'mTvBoardDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardDetail:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090158

    const-string v2, "field \'mEmptyBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    .line 12
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900eb

    const-string v2, "field \'mContentBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    .line 13
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090350

    const-string v2, "field \'mRlChannelBackup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRlChannelBackup:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mLlChannelBoard:Landroid/widget/RelativeLayout;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardTitle:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardDetail:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRlChannelBackup:Landroid/widget/RelativeLayout;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
