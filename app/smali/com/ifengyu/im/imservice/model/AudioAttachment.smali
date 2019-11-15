.class public Lcom/ifengyu/im/imservice/model/AudioAttachment;
.super Ljava/lang/Object;
.source "AudioAttachment.java"

# interfaces
.implements Lcom/ifengyu/im/imservice/model/MsgAttachment;


# instance fields
.field private TAG:Ljava/lang/String;

.field public content:[B

.field public mDuration:J

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioAttachment"

    iput-object v0, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs buildAttachment([Ljava/lang/String;)Lcom/ifengyu/im/imservice/model/MsgAttachment;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->setDuration(J)V

    :cond_0
    return-object p0
.end method

.method public codeAttachment()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->content:[B

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->mDuration:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setContent([B)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->content:[B

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->mDuration:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/model/AudioAttachment;->mUrl:Ljava/lang/String;

    return-void
.end method
