.class Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;
.super Ljava/lang/Object;
.source "AddMyGroupToDeviceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->j3()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;->b:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBottom()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;->b:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;)Lcom/ifengyu/intercom/ui/talk/b3/d;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment$a;->b:Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;

    invoke-virtual {v2, v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/AddMyGroupToDeviceFragment;->i3(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/i;->i0(Landroid/view/View;)V

    return-void
.end method
