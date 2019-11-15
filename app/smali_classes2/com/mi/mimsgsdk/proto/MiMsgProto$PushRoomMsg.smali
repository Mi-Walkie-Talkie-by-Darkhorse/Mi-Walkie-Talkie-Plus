.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushRoomMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final FROMMUID_FIELD_NUMBER:I = 0x2

.field public static final MRID_FIELD_NUMBER:I = 0x4

.field public static final MSG_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOMUID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

.field private static final serialVersionUID:J


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private fromMuid_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private mrid_:J

.field private msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

.field private toMuid_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->initFields()V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->appid_:I

    move v0, v2

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->fromMuid_:J

    move v0, v2

    goto :goto_1

    :sswitch_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toMuid_:J

    move v0, v2

    goto :goto_1

    :sswitch_4
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->mrid_:J

    move v0, v2

    goto :goto_1

    :sswitch_5
    const/4 v0, 0x0

    iget v3, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v5, 0x10

    if-ne v3, v5, :cond_2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    move-result-object v0

    move-object v3, v0

    :goto_2
    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-virtual {v3, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message$Builder;->buildPartial()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->makeExtensionsImmutable()V

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->makeExtensionsImmutable()V

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
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$25300()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$25502(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->appid_:I

    return p1
.end method

.method static synthetic access$25602(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->fromMuid_:J

    return-wide p1
.end method

.method static synthetic access$25702(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toMuid_:J

    return-wide p1
.end method

.method static synthetic access$25802(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->mrid_:J

    return-wide p1
.end method

.method static synthetic access$25902(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    return-object p1
.end method

.method static synthetic access$26002(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$24800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->appid_:I

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->fromMuid_:J

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toMuid_:J

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->mrid_:J

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;->access$25100()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method


# virtual methods
.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->appid_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    return-object v0
.end method

.method public getFromMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->fromMuid_:J

    return-wide v0
.end method

.method public getMrid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->mrid_:J

    return-wide v0
.end method

.method public getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    return-object v0
.end method

.method public getMsgOrBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->appid_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->fromMuid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toMuid_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->mrid_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getToMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toMuid_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFromMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

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

.method public hasMrid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

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

.method public hasMsg()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

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

.method public hasToMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$24900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->hasAppid()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->hasToMuid()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->hasMsg()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getMsg()Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_5
    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg$Builder;

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

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->appid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->fromMuid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->toMuid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->mrid_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->msg_:Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
