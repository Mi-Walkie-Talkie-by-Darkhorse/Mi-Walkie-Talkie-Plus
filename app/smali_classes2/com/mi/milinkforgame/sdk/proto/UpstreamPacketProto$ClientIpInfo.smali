.class public final Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientIpInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    }
.end annotation


# static fields
.field public static final CLIENTIPV4_FIELD_NUMBER:I = 0x3

.field public static final CLIENTIPV6_FIELD_NUMBER:I = 0x4

.field public static final CLIENTPORT_FIELD_NUMBER:I = 0x2

.field public static final IPTYPE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientIpV4_:I

.field private clientIpV6_:Lcom/google/protobuf/ByteString;

.field private clientPort_:I

.field private ipType_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;-><init>(Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->ipType_:I
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

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientPort_:I
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
    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV4_:I

    goto :goto_0

    :sswitch_4
    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV6_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5100()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->ipType_:I

    return p1
.end method

.method static synthetic access$5402(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientPort_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV4_:I

    return p1
.end method

.method static synthetic access$5602(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV6_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$4600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->ipType_:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientPort_:I

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV4_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV6_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->access$4900()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method


# virtual methods
.method public getClientIpV4()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV4_:I

    return v0
.end method

.method public getClientIpV6()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV6_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClientPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientPort_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public getIpType()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->ipType_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->ipType_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientPort_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV4_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV6_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientIpV4()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

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

.method public hasClientIpV6()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientPort()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

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

.method public hasIpType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto;->access$4700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

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

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->ipType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientPort_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV4_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->clientIpV6_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
