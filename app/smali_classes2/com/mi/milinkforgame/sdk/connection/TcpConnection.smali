.class public Lcom/mi/milinkforgame/sdk/connection/TcpConnection;
.super Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;
.source "TcpConnection.java"


# instance fields
.field private mIsLoaded:Z

.field private mServerIP:Ljava/lang/String;

.field private mServerPort:I


# direct methods
.method public constructor <init>(ILcom/mi/milinkforgame/sdk/connection/IConnectionCallback;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerPort:I

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->isLibLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    invoke-virtual {p0, p2}, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->setCallback(Lcom/mi/milinkforgame/sdk/connection/IConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;ILjava/lang/String;III)Z
    .locals 7

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    iput p2, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerPort:I

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    iget v2, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerPort:I

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->connect(Ljava/lang/String;ILjava/lang/String;III)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->disconnect()Z

    move-result v0

    goto :goto_0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mServerPort:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isSendDone(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->isSendDone(I)Z

    move-result v0

    goto :goto_0
.end method

.method public removeAllSendData()V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->removeAllSendData()V

    goto :goto_0
.end method

.method public removeSendData(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->removeSendData(I)V

    goto :goto_0
.end method

.method public sendData([BII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->sendData([BII)Z

    move-result v0

    goto :goto_0
.end method

.method public start()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->start()Z

    move-result v0

    goto :goto_0
.end method

.method public stop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->stop()Z

    move-result v0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/mi/milinkforgame/sdk/connection/ConnectionImpl;->wakeUp()V

    goto :goto_0
.end method
