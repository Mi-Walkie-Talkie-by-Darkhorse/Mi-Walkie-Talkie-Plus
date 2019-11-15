.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity_ViewBinding;
.super Ljava/lang/Object;
.source "GroupJoinActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    const v0, 0x7f1001b9

    const-string v1, "field \'mIbLeft\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v0, 0x7f1001b3

    const-string v1, "field \'mTvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f1001bb

    const-string v1, "field \'mIbRight\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v0, 0x7f1000e7

    const-string v1, "field \'mSearchView\'"

    const-class v2, Landroid/support/v7/widget/SearchView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const v0, 0x7f1000e9

    const-string v1, "field \'mRvSearchList\'"

    const-class v2, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    const v0, 0x7f1000e8

    const-string v1, "field \'mLlContent\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLlContent:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mIbRight:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mRvSearchList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->mLlContent:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    return-void
.end method
