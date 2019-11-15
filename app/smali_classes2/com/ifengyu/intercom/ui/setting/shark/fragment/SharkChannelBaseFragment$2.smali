.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;
.super Ljava/lang/Object;
.source "SharkChannelBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;->getOption()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$6;->a:[I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_ST_UERR;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "state response: success"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->a:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "state response: failed"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate$SHARK_STOPTION;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "state response: SHARK_EMPTY"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment$2;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "state response: SHARK_FORBIDE"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
