.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;
.super Ljava/lang/Object;
.source "SealChannelBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "ChannelInfo response: success"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "ChannelInfo response: failed"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "ChannelInfo response: SEAL_EMPTY"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->e(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v2, "ChannelInfo response: SEAL_FORBIDE"

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "ChannelInfo response: SEAL_CH_QUERY_CONTINUE"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->f(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->b:Ljava/lang/String;

    const-string v1, "ChannelInfo response: SEAL_CH_QUERY_FINISH"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$3;->a:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;->g(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
