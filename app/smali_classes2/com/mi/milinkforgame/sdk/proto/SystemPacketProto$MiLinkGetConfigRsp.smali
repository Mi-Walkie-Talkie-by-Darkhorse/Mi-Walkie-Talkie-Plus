.class public final Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SystemPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiLinkGetConfigRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    }
.end annotation


# static fields
.field public static final CONFIG_FIELD_NUMBER:I = 0x2

.field public static final JSONCONFIG_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

.field private jsonConfig_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timeStamp_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;-><init>(Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->initFields()V

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

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->timeStamp_:J

    move v0, v2

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;

    move-result-object v0

    move-object v3, v0

    :goto_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-virtual {v3, v0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    move v0, v2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->makeExtensionsImmutable()V

    return-void

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

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->makeExtensionsImmutable()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$12300()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12502(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->timeStamp_:J

    return-wide p1
.end method

.method static synthetic access$12602(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12802(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->timeStamp_:J

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->access$12100()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    return-object v0
.end method

.method public getConfigOrBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfigOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    return-object v0
.end method

.method public getJsonConfig()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getJsonConfigBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->jsonConfig_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->timeStamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getJsonConfigBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->timeStamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasConfig()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

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

.method public hasJsonConfig()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

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

.method public hasTimeStamp()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto;->access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;)Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp$Builder;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->timeStamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->config_:Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkConfig;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getJsonConfigBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/SystemPacketProto$MiLinkGetConfigRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
