.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$i;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->receiveChannelStateOperateResp(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$i;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$i;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    const v1, 0x7f11037b

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->c2(I)V

    return-void
.end method