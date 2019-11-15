.class public Lcom/mi/mimsgsdk/video/VideoBody;
.super Ljava/lang/Object;
.source "VideoBody.java"

# interfaces
.implements Lcom/mi/mimsgsdk/message/MiMsgBody;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private content:[B

.field private mLength:I

.field private mSize:I

.field private mUrl:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/video/VideoBody;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/video/VideoBody;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public codeBody()[B
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->newBuilder()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setServerURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setDuration(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setSize(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setThumbnailURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->build()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->newBuilder()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setServerURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setDuration(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setSize(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setContent(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->build()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->newBuilder()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setServerURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setDuration(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setSize(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setThumbnailURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->build()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->newBuilder()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setServerURL(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setDuration(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    iget v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->setSize(I)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody$Builder;->build()Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;

    move-result-object v0

    goto :goto_0
.end method

.method public decodeBody([B)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->parseFrom([B)Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getServerURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getSize()I

    move-result v1

    iput v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    :cond_0
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getThumbnailURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/BodyDefine$VideoBody;->getThumbnailURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/video/VideoBody;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoBody decode error e.getMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setContent([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->content:[B

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mLength:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mSize:I

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/video/VideoBody;->mUrl:Ljava/lang/String;

    return-void
.end method
