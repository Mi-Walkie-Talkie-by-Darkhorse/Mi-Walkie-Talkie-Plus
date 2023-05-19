.class public Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;
.super Ljava/lang/Object;
.source "Mi3ChannelState.java"


# instance fields
.field private ch1Model:Lcom/ifengyu/intercom/models/ChannelModel;

.field private ch2Model:Lcom/ifengyu/intercom/models/ChannelModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCh1Model()Lcom/ifengyu/intercom/models/ChannelModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->ch1Model:Lcom/ifengyu/intercom/models/ChannelModel;

    return-object v0
.end method

.method public getCh2Model()Lcom/ifengyu/intercom/models/ChannelModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->ch2Model:Lcom/ifengyu/intercom/models/ChannelModel;

    return-object v0
.end method

.method public setCh1Model(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->ch1Model:Lcom/ifengyu/intercom/models/ChannelModel;

    return-void
.end method

.method public setCh2Model(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->ch2Model:Lcom/ifengyu/intercom/models/ChannelModel;

    return-void
.end method

.method public setFrom(Lcom/ifengyu/intercom/protos/BleProtos$Channel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->hasCh1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->getCh1()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasSeq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->getCh1()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh1Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->hasCh2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->getCh2()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->hasSeq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->getCh2()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/l/a/d/a;->e(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/models/ChannelModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->setCh2Model(Lcom/ifengyu/intercom/models/ChannelModel;)V

    :cond_1
    return-void
.end method

.method public toProtoChannel()Lcom/ifengyu/intercom/protos/BleProtos$Channel;
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Channel;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->ch1Model:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/d/a;->j(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh1(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh1(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3/models/Mi3ChannelState;->ch2Model:Lcom/ifengyu/intercom/models/ChannelModel;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Lcom/ifengyu/intercom/l/a/d/a;->j(Lcom/ifengyu/intercom/models/ChannelModel;)Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh2(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/BleProtos$Frequency$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Frequency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->setCh2(Lcom/ifengyu/intercom/protos/BleProtos$Frequency;)Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;

    .line 8
    :goto_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$Channel$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$Channel;

    move-result-object v0

    return-object v0
.end method
