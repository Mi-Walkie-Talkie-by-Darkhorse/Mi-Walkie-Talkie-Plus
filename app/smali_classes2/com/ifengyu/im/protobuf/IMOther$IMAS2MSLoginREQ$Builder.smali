.class public final Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMOther.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;",
        "Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private hostName_:Ljava/lang/Object;

.field private serverSid_:I

.field private serverType_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$3500()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->create()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->build()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMOther$1;)V

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverType_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->access$3702(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverSid_:I

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->access$3802(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->access$3902(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->access$4002(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->clear()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->clear()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverType_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverSid_:I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearHostName()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearServerSid()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverSid_:I

    return-object p0
.end method

.method public clearServerType()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverType_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->create()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->clone()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHostNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getServerSid()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverSid_:I

    return v0
.end method

.method public getServerType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverType_:I

    return v0
.end method

.method public hasHostName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerSid()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hasServerType()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hasServerSid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hasHostName()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->hasServerType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->getServerType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->setServerType(I)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->hasServerSid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->getServerSid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->setServerSid(I)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->hasHostName()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->access$3900(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;->access$4100(Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public setHostName(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setHostNameBytes(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->hostName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setServerSid(I)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverSid_:I

    return-object p0
.end method

.method public setServerType(I)Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMOther$IMAS2MSLoginREQ$Builder;->serverType_:I

    return-object p0
.end method
