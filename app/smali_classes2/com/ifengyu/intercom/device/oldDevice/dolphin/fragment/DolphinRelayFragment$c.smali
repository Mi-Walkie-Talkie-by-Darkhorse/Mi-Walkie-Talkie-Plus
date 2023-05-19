.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;
.super Ljava/lang/Object;
.source "DolphinRelayFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->m2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    const-string v1, "relayInfo"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$c;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->f2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    :goto_0
    return-void
.end method
