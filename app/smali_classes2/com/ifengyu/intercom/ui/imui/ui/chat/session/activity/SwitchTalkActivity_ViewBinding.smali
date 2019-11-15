.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SwitchTalkActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;

    const v0, 0x7f1001b9

    const-string v1, "field \'mIbLeft\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v0, 0x7f1001b3

    const-string v1, "field \'mTvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f100097

    const-string v1, "field \'mTitleBar\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTitleBar:Landroid/widget/FrameLayout;

    const v0, 0x7f100179

    const-string v1, "field \'mTvTalkGroupName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupName:Landroid/widget/TextView;

    const v0, 0x7f10017a

    const-string v1, "field \'mTvTalkGroupId\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupId:Landroid/widget/TextView;

    const v0, 0x7f10017b

    const-string v1, "field \'mEmptyLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f10017c

    const-string v1, "field \'mRvGroupList\'"

    const-class v2, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mRvGroupList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTitleBar:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mTvTalkGroupId:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;->mRvGroupList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/SwitchTalkActivity;

    return-void
.end method
