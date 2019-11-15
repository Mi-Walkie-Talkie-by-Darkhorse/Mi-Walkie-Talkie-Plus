.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMGroupChangeMemberNotify"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;
    }
.end annotation


# static fields
.field public static final CHANGE_TYPE_FIELD_NUMBER:I = 0x2

.field public static final CHG_USER_ID_LIST_FIELD_NUMBER:I = 0x5

.field public static final CUR_USER_ID_LIST_FIELD_NUMBER:I = 0x4

.field public static final GROUP_ID_FIELD_NUMBER:I = 0x3

.field public static final GROUP_USERINFO_LIST_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

.field private chgUserIdList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curUserIdList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private groupId_:I

.field private groupUserinfoList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;",
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

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v9, 0x20

    const/16 v8, 0x10

    const/16 v7, 0x8

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_c

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->userId_:I
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

    and-int/lit8 v4, v1, 0x8

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    :cond_1
    and-int/lit8 v4, v1, 0x10

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    :cond_2
    and-int/lit8 v1, v1, 0x20

    if-ne v1, v9, :cond_3

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    move-result-object v6

    if-nez v6, :cond_4

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
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    goto :goto_0

    :sswitch_3
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupId_:I

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v1, 0x8

    if-eq v4, v7, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_5
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v1, 0x8

    if-eq v5, v7, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v4, v1, 0x10

    if-eq v4, v8, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_8
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v1, 0x10

    if-eq v5, v8, :cond_9

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v4, v1, 0x20

    if-eq v4, v9, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x20

    :cond_b
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    sget-object v5, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_c
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v7, :cond_d

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    :cond_d
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v8, :cond_e

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    :cond_e
    and-int/lit8 v0, v1, 0x20

    if-ne v0, v9, :cond_f

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    :cond_f
    :try_start_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_4
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2a -> :sswitch_7
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMGroup$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$11202(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->userId_:I

    return p1
.end method

.method static synthetic access$11302(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupId_:I

    return p1
.end method

.method static synthetic access$11500(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11600(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11700(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    return p1
.end method

.method static synthetic access$11900(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->userId_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->GROUP_MODIFY_TYPE_ADD:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupId_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;->access$11000()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method


# virtual methods
.method public getChangeType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    return-object v0
.end method

.method public getChgUserIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getChgUserIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChgUserIdListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method public getCurUserIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurUserIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurUserIdListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupId_:I

    return v0
.end method

.method public getGroupUserinfoList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    return-object v0
.end method

.method public getGroupUserinfoListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupUserinfoListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupUserinfoListOrBuilder(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfoOrBuilder;

    return-object v0
.end method

.method public getGroupUserinfoListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->userId_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    const/4 v2, 0x3

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupId_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_2
    move v3, v1

    move v4, v1

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    add-int v0, v2, v4

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getCurUserIdListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v4, v0, v2

    move v2, v1

    move v3, v1

    :goto_4
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getChgUserIdListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    move v2, v0

    :goto_5
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->userId_:I

    return v0
.end method

.method public hasChangeType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

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

.method public hasGroupId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

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

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    iget-byte v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->hasUserId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->hasChangeType()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->hasGroupId()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->toBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->newBuilder(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify$Builder;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberNotify;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
