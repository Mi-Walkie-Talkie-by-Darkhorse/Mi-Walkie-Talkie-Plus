.class public Lcom/mi/mimsgsdk/message/AudioBody;
.super Ljava/lang/Object;
.source "AudioBody.java"

# interfaces
.implements Lcom/mi/mimsgsdk/message/MiMsgBody;


# instance fields
.field private TAG:Ljava/lang/String;

.field public content:[B

.field public mLength:J

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioBody"

    iput-object v0, p0, Lcom/mi/mimsgsdk/message/AudioBody;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public codeBody()[B
    .locals 4

    iget-object v0, p0, Lcom/mi/mimsgsdk/message/AudioBody;->content:[B

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->newBuilder()Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mLength:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->setDuration(I)Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->setServerURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->content:[B

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->build()Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->newBuilder()Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mLength:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->setDuration(I)Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->setServerURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody$Builder;->build()Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;

    move-result-object v0

    goto :goto_0
.end method

.method public decodeBody([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->parseFrom([B)Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->getDuration()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mLength:J

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->getServerURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$AudioBody;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/message/AudioBody;->content:[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioBody decode error e.getMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/message/AudioBody;->content:[B

    return-object v0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setContent([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->content:[B

    return-void
.end method

.method public setLength(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mLength:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/message/AudioBody;->mUrl:Ljava/lang/String;

    return-void
.end method
