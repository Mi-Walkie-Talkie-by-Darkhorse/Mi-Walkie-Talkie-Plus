.class public Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090486

    const-string v2, "field \'mTvReceiveFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090493

    const-string v2, "field \'mTvSendFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09022c

    const-string v2, "field \'mLlChannelBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mLlChannelBoard:Landroid/widget/RelativeLayout;

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090339

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045f

    const-string v2, "field \'mTvChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045d

    const-string v2, "field \'mTvBoardTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardTitle:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045c

    const-string v2, "field \'mTvBoardDetail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardDetail:Landroid/widget/TextView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090158

    const-string v2, "field \'mEmptyBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900eb

    const-string v2, "field \'mContentBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvSendFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mLlChannelBoard:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvChannelName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mTvBoardDetail:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteChannelFragment;->mRlChannelBackup:Landroid/widget/RelativeLayout;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
