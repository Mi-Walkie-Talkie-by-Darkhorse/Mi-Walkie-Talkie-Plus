.class public final Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMMessage.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMGetMsgListRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;
    }
.end annotation


# static fields
.field public static final ATTACH_DATA_FIELD_NUMBER:I = 0x14

.field public static final MSG_ID_BEGIN_FIELD_NUMBER:I = 0x4

.field public static final MSG_LIST_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x3

.field public static final SESSION_TYPE_FIELD_NUMBER:I = 0x2

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

.field private static final serialVersionUID:J


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msgIdBegin_:I

.field private msgList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId_:I

.field private sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v8, 0x10

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    iput v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->userId_:I
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

    and-int/lit8 v1, v2, 0x10

    if-ne v1, v8, :cond_1

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    invoke-static {v6}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {v4, v6}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
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

    :cond_2
    :try_start_5
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    iput-object v7, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    goto :goto_0

    :sswitch_3
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionId_:I

    goto :goto_0

    :sswitch_4
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgIdBegin_:I

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v8, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_3
    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    sget-object v6, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->attachData_:Lcom/google/protobuf/ByteString;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_4
    and-int/lit8 v0, v2, 0x10

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    :cond_5
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0xa2 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMMessage$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$7902(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->userId_:I

    return p1
.end method

.method static synthetic access$8002(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionId_:I

    return p1
.end method

.method static synthetic access$8202(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgIdBegin_:I

    return p1
.end method

.method static synthetic access$8300(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8402(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    return p1
.end method

.method static synthetic access$8600(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->userId_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionId_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgIdBegin_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;->access$7700()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method


# virtual methods
.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;

    return-object v0
.end method

.method public getMsgIdBegin()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgIdBegin_:I

    return v0
.end method

.method public getMsgList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;

    return-object v0
.end method

.method public getMsgListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMsgListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    return-object v0
.end method

.method public getMsgListOrBuilder(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfoOrBuilder;

    return-object v0
.end method

.method public getMsgListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->userId_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionId_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgIdBegin_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedSerializedSize:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionId_:I

    return v0
.end method

.method public getSessionType()Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->userId_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

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

.method public hasMsgIdBegin()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

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

.method public hasSessionType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->hasUserId()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->hasSessionType()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->hasSessionId()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->hasMsgIdBegin()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->getMsgListCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->getMsgList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput-byte v2, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->toBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->newBuilder(Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;)Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp$Builder;

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

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->sessionId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgIdBegin_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->msgList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMMessage$IMGetMsgListRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
