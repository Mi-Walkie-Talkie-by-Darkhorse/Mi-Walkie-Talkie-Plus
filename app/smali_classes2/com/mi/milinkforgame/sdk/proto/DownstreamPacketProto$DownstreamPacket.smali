.class public final Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
.super Lcom/google/protobuf/GeneratedMessage;
.source "DownstreamPacketProto.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownstreamPacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    }
.end annotation


# static fields
.field public static final BUSIBUFF_FIELD_NUMBER:I = 0x6

.field public static final BUSICODE_FIELD_NUMBER:I = 0x4

.field public static final BUSICONTROL_FIELD_NUMBER:I = 0xa

.field public static final EXTRA_FIELD_NUMBER:I = 0x7

.field public static final MIUID_FIELD_NUMBER:I = 0x9

.field public static final MIUIN_FIELD_NUMBER:I = 0x2

.field public static final MNSCODE_FIELD_NUMBER:I = 0x3

.field public static final MNSERRMSG_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQ_FIELD_NUMBER:I = 0x1

.field public static final SERVICECMD_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private busiBuff_:Lcom/google/protobuf/ByteString;

.field private busiCode_:I

.field private busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

.field private extra_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private miUid_:Ljava/lang/Object;

.field private miUin_:J

.field private mnsCode_:I

.field private mnsErrMsg_:Ljava/lang/Object;

.field private seq_:I

.field private serviceCmd_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;-><init>(Z)V

    sput-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->initFields()V

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

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->seq_:I

    move v0, v2

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUin_:J

    move v0, v2

    goto :goto_1

    :sswitch_3
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsCode_:I

    move v0, v2

    goto :goto_1

    :sswitch_4
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiCode_:I

    move v0, v2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :sswitch_6
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    move v0, v2

    goto :goto_1

    :sswitch_7
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    move v0, v2

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_1

    :sswitch_a
    const/4 v0, 0x0

    iget v3, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v5, 0x200

    if-ne v3, v5, :cond_2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v0

    move-object v3, v0

    :goto_2
    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {v3, v0}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->buildPartial()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->makeExtensionsImmutable()V

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

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->makeExtensionsImmutable()V

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

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiCode_:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->seq_:I

    return p1
.end method

.method static synthetic access$802(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUin_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsCode_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->seq_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUin_:J

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsCode_:I

    iput v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiCode_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->access$300()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;->mergeFrom(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method


# virtual methods
.method public getBusiBuff()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBusiCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiCode_:I

    return v0
.end method

.method public getBusiControl()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    return-object v0
.end method

.method public getBusiControlOrBuilder()Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->defaultInstance:Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    return-object v0
.end method

.method public getExtra()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMiUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getMiUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMiUin()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUin_:J

    return-wide v0
.end method

.method public getMnsCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsCode_:I

    return v0
.end method

.method public getMnsErrMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getMnsErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsErrMsg_:Ljava/lang/Object;

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
            "Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->seq_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->seq_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUin_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsCode_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_4

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiCode_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getServiceCmdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMnsErrMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMiUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public getServiceCmd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getServiceCmdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->serviceCmd_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBusiBuff()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBusiCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

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

.method public hasBusiControl()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtra()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMiUid()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMiUin()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

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

.method public hasMnsCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

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

.method public hasMnsErrMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSeq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServiceCmd()Z
    .locals 2

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    const-class v2, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->newBuilder()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->toBuilder()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->newBuilder(Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;)Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket$Builder;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->seq_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->miUin_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->mnsCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    :cond_2
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiCode_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    :cond_3
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getServiceCmdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMnsErrMsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_7
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMiUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_8
    iget v0, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->busiControl_:Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_9
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
