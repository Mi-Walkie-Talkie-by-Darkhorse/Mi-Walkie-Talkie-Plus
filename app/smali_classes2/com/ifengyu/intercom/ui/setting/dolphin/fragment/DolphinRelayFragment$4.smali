.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;
.super Ljava/lang/Object;
.source "DolphinRelayFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->f(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ifengyu.action.RELAY_MODIFY_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "relayInfo"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment$4;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinRelayFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
