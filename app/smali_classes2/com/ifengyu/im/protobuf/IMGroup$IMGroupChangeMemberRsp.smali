.class public final Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IMGroup.java"

# interfaces
.implements Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IMGroupChangeMemberRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;
    }
.end annotation


# static fields
.field public static final ATTACH_DATA_FIELD_NUMBER:I = 0x14

.field public static final CHANGE_TYPE_FIELD_NUMBER:I = 0x2

.field public static final CHG_USER_ID_LIST_FIELD_NUMBER:I = 0x6

.field public static final CUR_USER_ID_LIST_FIELD_NUMBER:I = 0x5

.field public static final GROUP_ID_FIELD_NUMBER:I = 0x4

.field public static final GROUP_USERINFO_LIST_FIELD_NUMBER:I = 0x7

.field public static final ISFROMUSER_FIELD_NUMBER:I = 0x9

.field public static final MEMBER_ID_LIST_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CODE_FIELD_NUMBER:I = 0x3

.field public static final USER_HANDLE_FIELD_NUMBER:I = 0xa

.field public static final USER_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

.field private static final serialVersionUID:J


# instance fields
.field private attachData_:Lcom/google/protobuf/ByteString;

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

.field private isfromuser_:I

.field private memberIdList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private resultCode_:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userHandle_:I

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v0, -0x1

    const/16 v10, 0x40

    const/16 v9, 0x80

    const/16 v8, 0x20

    const/16 v7, 0x10

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->initFields()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_10

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userId_:I
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

    and-int/lit8 v4, v1, 0x10

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    :cond_1
    and-int/lit8 v4, v1, 0x20

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    :cond_2
    and-int/lit8 v4, v1, 0x40

    if-ne v4, v10, :cond_3

    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    :cond_3
    and-int/lit16 v1, v1, 0x80

    if-ne v1, v9, :cond_4

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    :cond_4
    :try_start_2
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    move-result-object v6

    if-nez v6, :cond_5

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

    :cond_5
    :try_start_5
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    iput-object v6, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    goto/16 :goto_0

    :sswitch_3
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->resultCode_:I

    goto/16 :goto_0

    :sswitch_4
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupId_:I

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v1, 0x10

    if-eq v4, v7, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_6
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v1, 0x10

    if-eq v5, v7, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v4, v1, 0x20

    if-eq v4, v8, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x20

    :cond_9
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit8 v5, v1, 0x20

    if-eq v5, v8, :cond_a

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x20

    :cond_a
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v4, v1, 0x40

    if-eq v4, v10, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x40

    :cond_c
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    sget-object v5, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit16 v4, v1, 0x80

    if-eq v4, v9, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x80

    :cond_d
    iget-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    and-int/lit16 v5, v1, 0x80

    if-eq v5, v9, :cond_e

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x80

    :cond_e
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_c
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->isfromuser_:I

    goto/16 :goto_0

    :sswitch_d
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userHandle_:I

    goto/16 :goto_0

    :sswitch_e
    iget v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->attachData_:Lcom/google/protobuf/ByteString;
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_10
    and-int/lit8 v0, v1, 0x10

    if-ne v0, v7, :cond_11

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    :cond_11
    and-int/lit8 v0, v1, 0x20

    if-ne v0, v8, :cond_12

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    :cond_12
    and-int/lit8 v0, v1, 0x40

    if-ne v0, v10, :cond_13

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    :cond_13
    and-int/lit16 v0, v1, 0x80

    if-ne v0, v9, :cond_14

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    :cond_14
    :try_start_6
    invoke-virtual {v3}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    :goto_5
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
        0x30 -> :sswitch_7
        0x32 -> :sswitch_8
        0x3a -> :sswitch_9
        0x40 -> :sswitch_a
        0x42 -> :sswitch_b
        0x48 -> :sswitch_c
        0x50 -> :sswitch_d
        0xa2 -> :sswitch_e
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/ifengyu/im/protobuf/IMGroup$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/ifengyu/im/protobuf/IMGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10102(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->isfromuser_:I

    return p1
.end method

.method static synthetic access$10502(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userHandle_:I

    return p1
.end method

.method static synthetic access$10602(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    return p1
.end method

.method static synthetic access$10800(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$9602(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userId_:I

    return p1
.end method

.method static synthetic access$9702(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->resultCode_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupId_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userId_:I

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->GROUP_MODIFY_TYPE_ADD:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->resultCode_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupId_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->isfromuser_:I

    iput v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userHandle_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;->access$9400()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;->mergeFrom(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method


# virtual methods
.method public getAttachData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->attachData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChangeType()Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    return-object v0
.end method

.method public getChgUserIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getChgUserIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method public getCurUserIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurUserIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->defaultInstance:Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupId_:I

    return v0
.end method

.method public getGroupUserinfoList(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfo;

    return-object v0
.end method

.method public getGroupUserinfoListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupUserinfoListOrBuilder(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupUserInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    return-object v0
.end method

.method public getIsfromuser()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->isfromuser_:I

    return v0
.end method

.method public getMemberIdList(I)I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMemberIdListCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMemberIdListList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->resultCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_b

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userId_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-virtual {v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->resultCode_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupId_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_2
    move v3, v1

    move v4, v1

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

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

    :cond_3
    add-int v0, v2, v4

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getCurUserIdListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v4, v0, v2

    move v2, v1

    move v3, v1

    :goto_4
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

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

    :cond_4
    add-int v0, v4, v3

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getChgUserIdListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    move v2, v1

    move v3, v0

    :goto_5
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_6
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_6

    :cond_6
    add-int v0, v3, v2

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getMemberIdListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7

    const/16 v1, 0x9

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->isfromuser_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    const/16 v1, 0xa

    iget v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userHandle_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedSerializedSize:I

    goto/16 :goto_0

    :cond_a
    move v2, v0

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method public getUserHandle()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userHandle_:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userId_:I

    return v0
.end method

.method public hasAttachData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

.method public hasChangeType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

.method public hasIsfromuser()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

.method public hasResultCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

.method public hasUserHandle()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

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

    iget-byte v2, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->hasUserId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->hasChangeType()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->hasResultCode()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->hasGroupId()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->hasIsfromuser()Z

    move-result v2

    if-nez v2, :cond_6

    iput-byte v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_6
    iput-byte v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->newBuilderForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->newBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->toBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->newBuilder(Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;)Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp$Builder;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->getSerializedSize()I

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->changeType_:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-virtual {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->resultCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupId_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->curUserIdList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->chgUserIdList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->groupUserinfoList_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->memberIdList_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->isfromuser_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_8
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->userHandle_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_9
    iget v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->attachData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/im/protobuf/IMGroup$IMGroupChangeMemberRsp;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method
