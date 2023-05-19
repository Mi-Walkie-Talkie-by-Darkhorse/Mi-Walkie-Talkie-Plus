.class Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;
.super Ljava/lang/Object;
.source "AddMyGroupToDeviceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->i3(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;Landroid/widget/LinearLayout;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->c:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->a:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->c:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->rvMyGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$b;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
