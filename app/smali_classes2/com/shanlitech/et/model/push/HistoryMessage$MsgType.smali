.class public final enum Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
.super Ljava/lang/Enum;
.source "HistoryMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/push/HistoryMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum IM_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum IM_LOC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum IM_PIC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum IM_TXT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum IM_VIDEO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_GROUP_INVITE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_GROUP_LEAVE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_GROUP_T:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_GROUP_TOKEN:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_SESSION_1V1:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_SESSION_QUIT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum INFO_SESSION_STATUS:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum NONE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum POC_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum UNREAD:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

.field public static final enum VIDEO_REPORT_START:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v1, "INFO_SESSION_QUIT"

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_QUIT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v3, "UNREAD"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->UNREAD:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v3, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->NONE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v5, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v7, "IM_TXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_TXT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v7, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v9, "IM_PIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v6}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_PIC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v9, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v11, "POC_AUDIO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v8}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->POC_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v11, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v13, "IM_AUDIO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v10}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    .line 2
    new-instance v13, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v15, "INFO_GROUP_INVITE"

    const/4 v10, 0x7

    invoke-direct {v13, v15, v10, v12}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_INVITE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v15, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v12, "INFO_GROUP_TOKEN"

    const/16 v8, 0x8

    invoke-direct {v15, v12, v8, v14}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_TOKEN:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v12, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v14, "INFO_GROUP_LEAVE"

    const/16 v6, 0x9

    invoke-direct {v12, v14, v6, v10}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_LEAVE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    .line 3
    new-instance v14, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v10, "INFO_GROUP_T"

    const/16 v4, 0xa

    invoke-direct {v14, v10, v4, v8}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_T:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v10, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v8, "INFO_SESSION_1V1"

    const/16 v2, 0xb

    invoke-direct {v10, v8, v2, v6}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_1V1:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v8, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v6, "IM_VIDEO"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_VIDEO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v6, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v4, "IM_LOC"

    const/16 v2, 0xd

    move-object/from16 v16, v8

    const/16 v8, 0xb

    invoke-direct {v6, v4, v2, v8}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_LOC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    .line 4
    new-instance v4, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v8, "INFO_SESSION_STATUS"

    const/16 v2, 0xe

    move-object/from16 v17, v6

    const/16 v6, 0xc

    invoke-direct {v4, v8, v2, v6}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_STATUS:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    new-instance v6, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const-string v8, "VIDEO_REPORT_START"

    const/16 v2, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0xd

    invoke-direct {v6, v8, v2, v4}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->VIDEO_REPORT_START:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const/16 v4, 0x10

    new-array v4, v4, [Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v14, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v6, v4, v2

    .line 5
    sput-object v4, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->$VALUES:[Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->value:I

    return-void
.end method

.method static synthetic access$000(I)Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->build(I)Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    move-result-object p0

    return-object p0
.end method

.method private static build(I)Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
    .locals 1

    const/4 v0, -0x3

    if-eq p0, v0, :cond_1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->NONE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->VIDEO_REPORT_START:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_STATUS:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_LOC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_VIDEO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_1V1:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_T:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_LEAVE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_TOKEN:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_GROUP_INVITE:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->POC_AUDIO:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_PIC:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 14
    :pswitch_c
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->IM_TXT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->UNREAD:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->INFO_SESSION_QUIT:Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->$VALUES:[Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/push/HistoryMessage$MsgType;->value:I

    return v0
.end method
