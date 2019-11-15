.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;
.super Ljava/lang/Enum;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageCmdID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final enum CID_MSG_DATA:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final enum CID_MSG_DATA_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_DATA_ACK_VALUE:I = 0x302

.field public static final CID_MSG_DATA_VALUE:I = 0x301

.field public static final enum CID_MSG_GET_BY_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_GET_BY_MSG_ID_REQ_VALUE:I = 0x30d

.field public static final enum CID_MSG_GET_BY_MSG_ID_RES:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_GET_BY_MSG_ID_RES_VALUE:I = 0x30e

.field public static final enum CID_MSG_GET_LATEST_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_GET_LATEST_MSG_ID_REQ_VALUE:I = 0x30b

.field public static final enum CID_MSG_GET_LATEST_MSG_ID_RSP:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_GET_LATEST_MSG_ID_RSP_VALUE:I = 0x30c

.field public static final enum CID_MSG_LIST_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_LIST_REQUEST_VALUE:I = 0x309

.field public static final enum CID_MSG_LIST_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_LIST_RESPONSE_VALUE:I = 0x30a

.field public static final enum CID_MSG_READ_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_READ_ACK_VALUE:I = 0x303

.field public static final enum CID_MSG_READ_NOTIFY:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_READ_NOTIFY_VALUE:I = 0x304

.field public static final enum CID_MSG_TIME_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_TIME_REQUEST_VALUE:I = 0x305

.field public static final enum CID_MSG_TIME_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_TIME_RESPONSE_VALUE:I = 0x306

.field public static final enum CID_MSG_UNREAD_CNT_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_UNREAD_CNT_REQUEST_VALUE:I = 0x307

.field public static final enum CID_MSG_UNREAD_CNT_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

.field public static final CID_MSG_UNREAD_CNT_RESPONSE_VALUE:I = 0x308

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_DATA"

    const/16 v2, 0x301

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_DATA:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_DATA_ACK"

    const/16 v2, 0x302

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_DATA_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_READ_ACK"

    const/16 v2, 0x303

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_READ_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_READ_NOTIFY"

    const/16 v2, 0x304

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_READ_NOTIFY:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_TIME_REQUEST"

    const/16 v2, 0x305

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_TIME_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_TIME_RESPONSE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x306

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_TIME_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_UNREAD_CNT_REQUEST"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x307

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_UNREAD_CNT_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_UNREAD_CNT_RESPONSE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x308

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_UNREAD_CNT_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_LIST_REQUEST"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x309

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_LIST_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_LIST_RESPONSE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x30a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_LIST_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_GET_LATEST_MSG_ID_REQ"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x30b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_LATEST_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_GET_LATEST_MSG_ID_RSP"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x30c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_LATEST_MSG_ID_RSP:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_GET_BY_MSG_ID_REQ"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x30d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_BY_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const-string v1, "CID_MSG_GET_BY_MSG_ID_RES"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x30e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_BY_MSG_ID_RES:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_DATA:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_DATA_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_READ_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_READ_NOTIFY:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_TIME_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_TIME_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_UNREAD_CNT_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_UNREAD_CNT_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_LIST_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_LIST_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_LATEST_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_LATEST_MSG_ID_RSP:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_BY_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_BY_MSG_ID_RES:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_DATA:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_DATA_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_READ_ACK:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_READ_NOTIFY:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_TIME_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_TIME_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_UNREAD_CNT_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_UNREAD_CNT_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_LIST_REQUEST:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_LIST_RESPONSE:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_LATEST_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_LATEST_MSG_ID_RSP:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_BY_MSG_ID_REQ:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->CID_MSG_GET_BY_MSG_ID_RES:Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$MessageCmdID;->value:I

    return v0
.end method
