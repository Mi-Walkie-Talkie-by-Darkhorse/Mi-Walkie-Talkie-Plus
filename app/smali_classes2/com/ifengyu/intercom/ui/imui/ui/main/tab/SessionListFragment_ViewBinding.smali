.class public Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SessionListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const v4, 0x7f10027a

    const v3, 0x7f1001bb

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    const v0, 0x7f1001b8

    const-string v1, "field \'mTvLeft\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvLeft:Landroid/widget/TextView;

    const v0, 0x7f1001b9

    const-string v1, "field \'mIbLeft\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v0, 0x7f1001b3

    const-string v1, "field \'mTvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f1001ba

    const-string v1, "field \'mTvRight\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvRight:Landroid/widget/TextView;

    const-string v0, "field \'mIbRight\' and method \'onClick\'"

    invoke-static {p2, v3, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'mIbRight\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {v1, v3, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100097

    const-string v1, "field \'mTitleBar\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTitleBar:Landroid/widget/FrameLayout;

    const v0, 0x7f10022e

    const-string v1, "field \'mNoNetworkView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    const v0, 0x7f100232

    const-string v1, "field \'mDeviceStatusView\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDeviceStatusView:Landroid/view/View;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->c:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100231

    const-string v1, "field \'mReconnectProgressBar\'"

    const-class v2, Landroid/widget/ProgressBar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f100230

    const-string v1, "field \'mDisplayView\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    const v0, 0x7f10022f

    const-string v1, "field \'mIvWarning\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvWarning:Landroid/widget/ImageView;

    const-string v0, "field \'mItemTalkGroup\' and method \'onClick\'"

    invoke-static {p2, v4, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-string v0, "field \'mItemTalkGroup\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {v1, v4, v0, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mItemTalkGroup:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$3;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10027c

    const-string v1, "field \'mIvAvatarNone\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvAvatarNone:Landroid/widget/ImageView;

    const v0, 0x7f10027d

    const-string v1, "field \'mIvTalkAvatar\'"

    const-class v2, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    const v0, 0x7f100281

    const-string v1, "field \'mTvTalkNickName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkNickName:Landroid/widget/TextView;

    const v0, 0x7f100282

    const-string v1, "field \'mTvTalkLastMsg\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkLastMsg:Landroid/widget/TextView;

    const v0, 0x7f10027f

    const-string v1, "field \'mTvTalkDataTime\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkDataTime:Landroid/widget/TextView;

    const v0, 0x7f100280

    const-string v1, "field \'mDfTalkUnreadNumber\'"

    const-class v2, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDfTalkUnreadNumber:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    const v0, 0x7f100236

    const-string v1, "field \'mRvRecentList\'"

    const-class v2, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    const v0, 0x7f100237

    const-string v1, "field \'mEmptyView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mEmptyView:Landroid/view/View;

    const v0, 0x7f100234

    const-string v1, "field \'mTvDeviceStatus\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvDeviceStatus:Landroid/widget/TextView;

    const v0, 0x7f100235

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->e:Landroid/view/View;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding$4;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvLeft:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvRight:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTitleBar:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mNoNetworkView:Landroid/view/View;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDeviceStatusView:Landroid/view/View;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mReconnectProgressBar:Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDisplayView:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvWarning:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mItemTalkGroup:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvAvatarNone:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mIvTalkAvatar:Lcom/ifengyu/library/widget/groupicon/NineGridImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkNickName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkLastMsg:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvTalkDataTime:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mDfTalkUnreadNumber:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mEmptyView:Landroid/view/View;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->mTvDeviceStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    return-void
.end method
