.class public final Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnreadInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    }
.end annotation


# static fields
.field public static final LATEST_MSG_DATA_FIELD_NUMBER:I = 0x5

.field public static final LATEST_MSG_FROM_USER_ID_FIELD_NUMBER:I = 0x7

.field public static final LATEST_MSG_ID_FIELD_NUMBER:I = 0x4

.field public static final LATEST_MSG_TYPE_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final SESSION_TYPE_FIELD_NUMBER:I = 0x2

.field public static final UNREAD_CNT_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private latestMsgData_:Lcom/google/protobuf/ByteString;

.field private latestMsgFromUserId_:I

.field private latestMsgId_:I

.field private latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sessionId_:I

.field private sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private unreadCnt_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->initFields()V

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

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionId_:I
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

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
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

    :cond_1
    :try_start_5
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    goto :goto_0

    :sswitch_3
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unreadCnt_:I

    goto :goto_0

    :sswitch_4
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgId_:I

    goto :goto_0

    :sswitch_5
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgData_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto/16 :goto_0

    :cond_2
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    goto/16 :goto_0

    :sswitch_7
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgFromUserId_:I
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBaseDefine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$8702(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionId_:I

    return p1
.end method

.method static synthetic access$8802(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unreadCnt_:I

    return p1
.end method

.method static synthetic access$9002(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgId_:I

    return p1
.end method

.method static synthetic access$9102(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgFromUserId_:I

    return p1
.end method

.method static synthetic access$9402(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$9500(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionId_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unreadCnt_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgId_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgData_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgFromUserId_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->access$8500()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;

    return-object v0
.end method

.method public getLatestMsgData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLatestMsgFromUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgFromUserId_:I

    return v0
.end method

.method public getLatestMsgId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgId_:I

    return v0
.end method

.method public getLatestMsgType()Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionId_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unreadCnt_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgId_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgData_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgFromUserId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionId_:I

    return v0
.end method

.method public getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object v0
.end method

.method public getUnreadCnt()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unreadCnt_:I

    return v0
.end method

.method public hasLatestMsgData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

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

.method public hasLatestMsgFromUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

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

.method public hasLatestMsgId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

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

.method public hasLatestMsgType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

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

.method public hasUnreadCnt()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasSessionId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasSessionType()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasUnreadCnt()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgId()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgData()Z

    move-result v2

    if-nez v2, :cond_6

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgType()Z

    move-result v2

    if-nez v2, :cond_7

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->hasLatestMsgFromUserId()Z

    move-result v2

    if-nez v2, :cond_8

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_8
    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->newBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->toBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->newBuilder(Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unreadCnt_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgId_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_5
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->latestMsgFromUserId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UnreadInfo;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
