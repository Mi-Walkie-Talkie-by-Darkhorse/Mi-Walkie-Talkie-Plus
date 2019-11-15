.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChatRoomInfoFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    const v0, 0x7f1001b9

    const-string v1, "field \'mIbLeft\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v0, 0x7f1001b3

    const-string v1, "field \'mTvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f100097

    const-string v1, "field \'mTitleBar\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTitleBar:Landroid/widget/FrameLayout;

    const v0, 0x7f10023c

    const-string v1, "field \'mTvGroupId\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTvGroupId:Landroid/widget/TextView;

    const v0, 0x7f10017c

    const-string v1, "field \'mRvGroupList\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mRvGroupList:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f10023e

    const-string v1, "field \'mItemGroupName\'"

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    const v0, 0x7f10023f

    const-string v1, "field \'mItemGroupQrCode\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupQrCode:Landroid/widget/RelativeLayout;

    const v0, 0x7f100240

    const-string v1, "field \'mItemMyNickname\'"

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    const v0, 0x7f100241

    const-string v1, "field \'mItemTransferOwner\'"

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemTransferOwner:Lcom/ifengyu/library/widget/view/ItemView;

    const v0, 0x7f100242

    const-string v1, "field \'mBtnDeleteQuit\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mBtnDeleteQuit:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    const v0, 0x7f10023d

    const-string v1, "field \'mMoreView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mMoreView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTitleBar:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mTvGroupId:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mRvGroupList:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupName:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemGroupQrCode:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemMyNickname:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mItemTransferOwner:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mBtnDeleteQuit:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;->mMoreView:Landroid/view/View;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/fragment/ChatRoomInfoFragment;

    return-void
.end method
