.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AddMyGroupToDeviceFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0903ca

    const-string v2, "field \'rvMyGroupList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
