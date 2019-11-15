.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;
.super Ljava/lang/Object;
.source "DolphinChannelBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$8;->a:[I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "state response: success"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "state response: failed"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;->CH_QUERY:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->a:Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->h(Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "state response: param error"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "state response: not support"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "state response: final"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment$7;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
