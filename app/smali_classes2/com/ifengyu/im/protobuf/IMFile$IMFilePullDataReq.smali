.class public final Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMFile.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMFilePullDataReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;
    }
.end annotation


# static fields
.field public static final DATA_SIZE_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_ID_FIELD_NUMBER:I = 0x1

.field public static final TRANS_MODE_FIELD_NUMBER:I = 0x3

.field public static final USER_ID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dataSize_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private taskId_:Ljava/lang/Object;

.field private transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->initFields()V

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

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iget v5, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;
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

    :try_start_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->userId_:I
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    goto :goto_0

    :sswitch_4
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->offset_:I

    goto :goto_0

    :sswitch_5
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->dataSize_:I
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMFile$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2600(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->userId_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->offset_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->dataSize_:I

    return p1
.end method

.method static synthetic access$3102(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    return p1
.end method

.method static synthetic access$3200(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->userId_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->FILE_TYPE_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->offset_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->dataSize_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;->access$2400()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->dataSize_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->defaultInstance:Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->offset_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->getTaskIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->userId_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->offset_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->dataSize_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getTaskIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->taskId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getTransMode()Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->userId_:I

    return v0
.end method

.method public hasDataSize()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

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

.method public hasOffset()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

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

.method public hasTaskId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->hasTaskId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->hasUserId()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->hasTransMode()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->hasOffset()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->hasDataSize()Z

    move-result v2

    if-nez v2, :cond_6

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_6
    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->newBuilder()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->toBuilder()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->newBuilder(Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;)Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq$Builder;

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

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->getTaskIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->userId_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->transMode_:Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$FileType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->offset_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->dataSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMFile$IMFilePullDataReq;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
