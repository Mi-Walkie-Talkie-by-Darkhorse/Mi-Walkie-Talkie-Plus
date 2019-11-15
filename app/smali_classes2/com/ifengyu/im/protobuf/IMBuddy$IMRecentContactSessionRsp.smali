.class public final Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMBuddy.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBuddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMRecentContactSessionRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;
    }
.end annotation


# static fields
.field public static final ATTACH_DATA_FIELD_NUMBER:I = 0x14

.field public static final CONTACT_SESSION_LIST_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

.field private static final serialVersionUID:J


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private contactSessionList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->initFields()V

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

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v2, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    iput v2, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->userId_:I
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

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_2

    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_2
    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    sget-object v6, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    iget v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->attachData_:Lcom/google/protobuf/ByteString;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v2, 0x2

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    :cond_4
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0xa2 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMBuddy$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMBuddy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5202(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->userId_:I

    return p1
.end method

.method static synthetic access$5300(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    return p1
.end method

.method static synthetic access$5600(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->userId_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;->access$5000()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method


# virtual methods
.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContactSessionList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    return-object v0
.end method

.method public getContactSessionListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactSessionListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    return-object v0
.end method

.method public getContactSessionListOrBuilder(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfoOrBuilder;

    return-object v0
.end method

.method public getContactSessionListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->userId_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_2

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->userId_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

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

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

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

    iget-byte v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->hasUserId()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->getContactSessionListCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->getContactSessionList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ContactSessionInfo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-byte v2, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->toBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->newBuilder(Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;)Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp$Builder;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->contactSessionList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMBuddy$IMRecentContactSessionRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
