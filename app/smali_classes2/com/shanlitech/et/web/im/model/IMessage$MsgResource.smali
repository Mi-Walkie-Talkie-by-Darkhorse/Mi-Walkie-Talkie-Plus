.class public Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;
.super Ljava/lang/Object;
.source "IMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/web/im/model/IMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgResource"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private duration:J

.field private fileSuffix:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sPath:Ljava/lang/String;

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->duration:J

    return-wide v0
.end method

.method public getFileSuffix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->fileSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->sPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->server:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->duration:J

    return-void
.end method

.method public setFileSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->fileSuffix:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->path:Ljava/lang/String;

    return-void
.end method

.method public setSPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->sPath:Ljava/lang/String;

    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/im/model/IMessage$MsgResource;->server:Ljava/lang/String;

    return-void
.end method
