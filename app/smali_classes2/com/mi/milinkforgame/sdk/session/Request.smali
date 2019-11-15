.class public Lcom/mi/milinkforgame/sdk/session/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private createdTime:J

.field private data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

.field private encodeType:B

.field private isInternal:Z

.field private isPing:Z

.field private listener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

.field private mHandleSessionNO:I

.field private retryCount:I

.field private sentTime:J

.field private size:I

.field private timeOut:I

.field private validTime:I


# direct methods
.method public constructor <init>(Lcom/mi/milinkforgame/sdk/aidl/PacketData;Lcom/mi/milinkforgame/sdk/session/ResponseListener;ZZB)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->validTime:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->sentTime:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getRequestTimeout()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->timeOut:I

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isPing:Z

    iput-byte v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->encodeType:B

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->size:I

    iput-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isInternal:Z

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->retryCount:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->mHandleSessionNO:I

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Request;->data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->listener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    iput-boolean p3, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isPing:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->createdTime:J

    iput-boolean p4, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isInternal:Z

    iput-byte p5, p0, Lcom/mi/milinkforgame/sdk/session/Request;->encodeType:B

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getValidTime()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->validTime:I

    return-void
.end method


# virtual methods
.method public addRetryCount()V
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->retryCount:I

    return-void
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->createdTime:J

    return-wide v0
.end method

.method public getData()Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    return-object v0
.end method

.method public getListener()Lcom/mi/milinkforgame/sdk/session/ResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->listener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->retryCount:I

    return v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->sentTime:J

    return-wide v0
.end method

.method public getSeqNo()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->size:I

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->timeOut:I

    return v0
.end method

.method public getValidTime()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->validTime:I

    return v0
.end method

.method public isInternalRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isInternal:Z

    return v0
.end method

.method public isPingRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isPing:Z

    return v0
.end method

.method public isTimeout()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->sentTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->timeOut:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidNow()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->createdTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->validTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataSendFailed(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->listener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->listener:Lcom/mi/milinkforgame/sdk/session/ResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/session/ResponseListener;->onDataSendFailed(ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestShouldCached()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Request;->data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->needCached()Z

    move-result v0

    return v0
.end method

.method public setHandleSessionNO(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/Request;->mHandleSessionNO:I

    return-void
.end method

.method public setSentTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/session/Request;->sentTime:J

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/session/Request;->timeOut:I

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 4

    const-string v0, "[No:%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/session/Request;->mHandleSessionNO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/Request;->data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iget-boolean v2, p0, Lcom/mi/milinkforgame/sdk/session/Request;->isPing:Z

    iget-byte v3, p0, Lcom/mi/milinkforgame/sdk/session/Request;->encodeType:B

    invoke-static {v0, v1, v2, v3}, Lcom/mi/milinkforgame/sdk/session/util/StreamUtil;->toUpBytes(Ljava/lang/String;Lcom/mi/milinkforgame/sdk/aidl/PacketData;ZB)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    iput v1, p0, Lcom/mi/milinkforgame/sdk/session/Request;->size:I

    :cond_0
    return-object v0
.end method
