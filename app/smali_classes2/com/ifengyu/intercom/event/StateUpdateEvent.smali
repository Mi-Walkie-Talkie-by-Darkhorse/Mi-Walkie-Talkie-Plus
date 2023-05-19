.class public Lcom/ifengyu/intercom/event/StateUpdateEvent;
.super Ljava/lang/Object;
.source "StateUpdateEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ch1:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

.field private ch2:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

.field private hasCh1:Z

.field private hasCh2:Z

.field private hasStateMode:Z

.field private option:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field private stateCode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field private stateMode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->version:I

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->stateCode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->stateMode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->option:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->ch1:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->ch2:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasCh1:Z

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasCh2:Z

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasStateMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasStateMode:Z

    return-void
.end method


# virtual methods
.method public getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->ch1:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->ch2:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->option:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object v0
.end method

.method public getStateCode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->stateCode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object v0
.end method

.method public getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->stateMode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->version:I

    return v0
.end method

.method public isHasCh1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasCh1:Z

    return v0
.end method

.method public isHasCh2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasCh2:Z

    return v0
.end method

.method public isHasStateMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasStateMode:Z

    return v0
.end method

.method public setCh1(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->ch1:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-void
.end method

.method public setCh2(Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->ch2:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-void
.end method

.method public setHasCh1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasCh1:Z

    return-void
.end method

.method public setHasCh2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasCh2:Z

    return-void
.end method

.method public setHasStateMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->hasStateMode:Z

    return-void
.end method

.method public setOption(Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->option:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-void
.end method

.method public setStateCode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->stateCode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-void
.end method

.method public setStateMode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->stateMode:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/event/StateUpdateEvent;->version:I

    return-void
.end method
