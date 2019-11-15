.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncGroupMsgResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final CURRGUID_FIELD_NUMBER:I = 0x3

.field public static final CURRMUID_FIELD_NUMBER:I = 0x4

.field public static final MAXMSGSEQ_FIELD_NUMBER:I = 0x7

.field public static final MSGS_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETCODE_FIELD_NUMBER:I = 0x2

.field public static final TARGETGGID_FIELD_NUMBER:I = 0x5

.field public static final TARGETMGID_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

.field private static final serialVersionUID:J


# instance fields
.field private appid_:I

.field private bitField0_:I

.field private currGuid_:Ljava/lang/Object;

.field private currMuid_:J

.field private maxMsgSeq_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msgs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            ">;"
        }
    .end annotation
.end field

.field private retCode_:I

.field private targetGgid_:Ljava/lang/Object;

.field private targetMgid_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v6, 0x80

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    iput v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->appid_:I
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

    and-int/lit16 v1, v2, 0x80

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->retCode_:I
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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currMuid_:J

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetMgid_:J

    goto/16 :goto_0

    :sswitch_7
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->maxMsgSeq_:J

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v4, v2, 0x80

    if-eq v4, v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    or-int/lit16 v2, v2, 0x80

    :cond_2
    iget-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    sget-object v5, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_3
    and-int/lit16 v0, v2, 0x80

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$17400()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17602(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->appid_:I

    return p1
.end method

.method static synthetic access$17702(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->retCode_:I

    return p1
.end method

.method static synthetic access$17800(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17802(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17902(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currMuid_:J

    return-wide p1
.end method

.method static synthetic access$18000(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18002(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18102(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetMgid_:J

    return-wide p1
.end method

.method static synthetic access$18202(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->maxMsgSeq_:J

    return-wide p1
.end method

.method static synthetic access$18300(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$18302(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18402(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$18500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$16900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->appid_:I

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->retCode_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currMuid_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetMgid_:J

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->maxMsgSeq_:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->access$17200()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method


# virtual methods
.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->appid_:I

    return v0
.end method

.method public getCurrGuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currGuid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCurrMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currMuid_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    return-object v0
.end method

.method public getMaxMsgSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->maxMsgSeq_:J

    return-wide v0
.end method

.method public getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    return-object v0
.end method

.method public getMsgsCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMsgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    return-object v0
.end method

.method public getMsgsOrBuilder(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;

    return-object v0
.end method

.method public getMsgsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->retCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->appid_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->retCode_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getCurrGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_3

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currMuid_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getTargetGgidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetMgid_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    const/4 v2, 0x7

    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->maxMsgSeq_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public getTargetGgid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getTargetGgidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetGgid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTargetMgid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetMgid_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrGuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

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

.method public hasCurrMuid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

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

.method public hasMaxMsgSeq()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

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

.method public hasRetCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

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

.method public hasTargetGgid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

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

.method public hasTargetMgid()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$17000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasAppid()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasRetCode()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasCurrGuid()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->hasTargetGgid()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getMsgsCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->appid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->retCode_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getCurrGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->currMuid_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getTargetGgidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->targetMgid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_5
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->maxMsgSeq_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
