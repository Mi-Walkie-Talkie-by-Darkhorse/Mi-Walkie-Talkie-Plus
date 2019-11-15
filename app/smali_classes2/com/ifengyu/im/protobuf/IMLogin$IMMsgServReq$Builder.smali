.class public final Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IMLogin.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;",
        "Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;",
        ">;",
        "Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReqOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$100()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->create()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->build()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMLogin$1;)V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->clear()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->clear()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
    .locals 0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->create()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->buildPartial()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->clone()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    check-cast p1, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;
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

    invoke-virtual {p0, v1}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;)Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;->getDefaultInstance()Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;->access$300(Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMLogin$IMMsgServReq$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method
