.class public final Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MiMsgProto.java"

# interfaces
.implements Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/proto/MiMsgProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncUserMsgResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x1

.field public static final CURRGUID_FIELD_NUMBER:I = 0x3

.field public static final CURRMUID_FIELD_NUMBER:I = 0x4

.field public static final MAXMSGSEQ_FIELD_NUMBER:I = 0x5

.field public static final MSGS_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETCODE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

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

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;-><init>(Z)V

    sput-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->initFields()V

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

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    iput v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->initFields()V

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

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->appid_:I
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

    and-int/lit8 v1, v2, 0x20

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->retCode_:I
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

    iget v5, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currMuid_:J

    goto :goto_0

    :sswitch_5
    iget v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->maxMsgSeq_:J

    goto :goto_0

    :sswitch_6
    and-int/lit8 v4, v2, 0x20

    if-eq v4, v6, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    :cond_2
    iget-object v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

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
    and-int/lit8 v0, v2, 0x20

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$7400()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->appid_:I

    return p1
.end method

.method static synthetic access$7702(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->retCode_:I

    return p1
.end method

.method static synthetic access$7800(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currMuid_:J

    return-wide p1
.end method

.method static synthetic access$8002(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->maxMsgSeq_:J

    return-wide p1
.end method

.method static synthetic access$8100(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;I)I
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$8300()Z
    .locals 1

    sget-boolean v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->appid_:I

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->retCode_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currMuid_:J

    iput-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->maxMsgSeq_:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;->access$7200()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;->mergeFrom(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method


# virtual methods
.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->appid_:I

    return v0
.end method

.method public getCurrGuid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currGuid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCurrMuid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currMuid_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->defaultInstance:Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    return-object v0
.end method

.method public getMaxMsgSeq()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->maxMsgSeq_:J

    return-wide v0
.end method

.method public getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    return-object v0
.end method

.method public getMsgsCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    return-object v0
.end method

.method public getMsgsOrBuilder(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$MessageOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->retCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->appid_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->retCode_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getCurrGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currMuid_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->maxMsgSeq_:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedSerializedSize:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAppid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

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

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

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

.method public hasRetCode()Z
    .locals 2

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto;->access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    const-class v2, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->hasAppid()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->hasRetCode()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->hasCurrGuid()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getMsgsCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getMsgs(I)Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/mimsgsdk/proto/MiMsgProto$Message;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v1, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-byte v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->newBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/mimsgsdk/proto/MiMsgProto$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->newBuilder(Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse$Builder;

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

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getSerializedSize()I

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->appid_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->retCode_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getCurrGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->currMuid_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_3
    iget v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->maxMsgSeq_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->msgs_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
