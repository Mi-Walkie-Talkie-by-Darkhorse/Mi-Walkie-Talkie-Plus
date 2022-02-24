.class public Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;
.super Ljava/lang/Object;
.source "StateUpdateEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

.field private b:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field private c:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field private d:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

.field private e:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getVersion()I

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getOption()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    .line 6
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh1()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    .line 7
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getCh2()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f:Z

    .line 9
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasCh2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g:Z

    .line 10
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->hasStateMode()Z

    return-void
.end method


# virtual methods
.method public a()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->d:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public b()Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->e:Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;

    return-object v0
.end method

.method public c()Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->a:Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;

    return-object v0
.end method

.method public d()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->b:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object v0
.end method

.method public e()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->c:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/eventbus/StateUpdateEvent;->g:Z

    return v0
.end method
