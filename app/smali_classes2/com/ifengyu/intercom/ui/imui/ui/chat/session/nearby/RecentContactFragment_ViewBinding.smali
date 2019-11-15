.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RecentContactFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    const v0, 0x7f100236

    const-string v1, "field \'mRvRecentList\'"

    const-class v2, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    const v0, 0x7f100237

    const-string v1, "field \'mEmptyView\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mEmptyView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mRvRecentList:Lcom/ifengyu/library/widget/view/RecyclerViewEmptySupport;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;->mEmptyView:Landroid/view/View;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/nearby/RecentContactFragment;

    return-void
.end method
