.class public final Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SDKUserC2S.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/SDKUserC2S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryMuidReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final MEDIAMUID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

.field private static final serialVersionUID:J


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private mediaMuid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedIsInitialized:B

    iput v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->appid_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    and-int/lit8 v1, v2, 0x2

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v7, :cond_2

    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_2
    iget-object v4, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->appid_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->appid_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;->access$1400()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method


# virtual methods
.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->appid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->defaultInstance:Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    return-object v0
.end method

.method public getMediaMuid(I)I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMediaMuidCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaMuidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->appid_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v0

    :goto_1
    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    add-int v0, v1, v3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->getMediaMuidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedSerializedSize:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;

    const-class v2, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->hasAppid()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/SDKUserC2S$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->toBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->toBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->newBuilder(Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;)Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->appid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->mediaMuid_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/SDKUserC2S$QueryMuidReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
