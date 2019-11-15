.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$9;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$9;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    const v1, 0x7f0901b9

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->b(I)V

    return-void
.end method
