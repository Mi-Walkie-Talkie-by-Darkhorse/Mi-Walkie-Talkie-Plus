.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment_ViewBinding;
.super Ljava/lang/Object;
.source "Mi3GWDetailFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090457

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0903ca

    const-string v2, "field \'rvList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/Mi3GWDetailFragment;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method