.class Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;
.super Ljava/lang/Object;
.source "DeviceCurGroupSwitchFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/mi3gw/c/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->r3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->i3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    const v1, 0x7f11037c

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/g;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/g;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;->h3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment;I)V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSwitchFragment$a;->c()V

    return-void
.end method
