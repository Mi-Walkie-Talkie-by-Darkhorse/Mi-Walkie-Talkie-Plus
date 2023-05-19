.class public final enum Lcom/shanlitech/et/model/FailUser$ErrorCode;
.super Ljava/lang/Enum;
.source "FailUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/FailUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/model/FailUser$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum AUTH:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum CHAT_DISABLED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum DID_DISABLED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum DISABLED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum EMPTY:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum ERROR:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum EXPIRED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum LIMIT:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum LIMIT_G_U:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum LIMIT_U_G:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum NEED_CONFIRM:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum NORIGHT:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum SUCCESS:Lcom/shanlitech/et/model/FailUser$ErrorCode;

.field public static final enum UNEXIST:Lcom/shanlitech/et/model/FailUser$ErrorCode;


# instance fields
.field private msg:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "\u64cd\u4f5c\u6210\u529f"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/shanlitech/et/model/FailUser$ErrorCode;->SUCCESS:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 2
    new-instance v1, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-string v6, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/shanlitech/et/model/FailUser$ErrorCode;->ERROR:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 3
    new-instance v3, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v5, "AUTH"

    const/4 v6, 0x2

    const/4 v7, -0x2

    const-string v8, "\u9274\u6743\u9519\u8bef"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/shanlitech/et/model/FailUser$ErrorCode;->AUTH:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 4
    new-instance v5, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v7, "NORIGHT"

    const/4 v8, 0x3

    const/4 v9, -0x3

    const-string v10, "\u6743\u9650\u9519\u8bef"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/shanlitech/et/model/FailUser$ErrorCode;->NORIGHT:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 5
    new-instance v7, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v9, "UNEXIST"

    const/4 v10, 0x4

    const/4 v11, -0x4

    const-string v12, "\u4e0d\u5b58\u5728"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/shanlitech/et/model/FailUser$ErrorCode;->UNEXIST:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 6
    new-instance v9, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v11, "EXPIRED"

    const/4 v12, 0x5

    const/4 v13, -0x5

    const-string v14, "\u8fc7\u671f"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/shanlitech/et/model/FailUser$ErrorCode;->EXPIRED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 7
    new-instance v11, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v13, "LIMIT"

    const/4 v14, 0x6

    const/4 v15, -0x6

    const-string v12, "\u914d\u989d\u9650\u5236"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/shanlitech/et/model/FailUser$ErrorCode;->LIMIT:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 8
    new-instance v12, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v13, "EMPTY"

    const/4 v15, 0x7

    const/4 v14, -0x7

    const-string v10, "\u65e0\u6548\u5bf9\u8c61"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/shanlitech/et/model/FailUser$ErrorCode;->EMPTY:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 9
    new-instance v10, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v13, "DISABLED"

    const/16 v14, 0x8

    const/4 v15, -0x8

    const-string v8, "\u88ab\u7981\u7528"

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/shanlitech/et/model/FailUser$ErrorCode;->DISABLED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 10
    new-instance v8, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v13, "DID_DISABLED"

    const/16 v15, 0x9

    const/16 v14, -0x9

    invoke-direct {v8, v13, v15, v14, v13}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/shanlitech/et/model/FailUser$ErrorCode;->DID_DISABLED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 11
    new-instance v13, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v14, "CHAT_DISABLED"

    const/16 v15, 0xa

    const/16 v6, -0xa

    invoke-direct {v13, v14, v15, v6, v14}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/shanlitech/et/model/FailUser$ErrorCode;->CHAT_DISABLED:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 12
    new-instance v6, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v14, "NEED_CONFIRM"

    const/16 v15, 0xb

    const/16 v4, -0xb

    const-string v2, "\u4e8c\u7ef4\u7801\u8fdb\u7ec4\u5f85\u786e\u8ba4"

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/shanlitech/et/model/FailUser$ErrorCode;->NEED_CONFIRM:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 13
    new-instance v2, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v4, "LIMIT_U_G"

    const/16 v14, 0xc

    const/16 v15, -0xc

    move-object/from16 v16, v6

    const-string v6, "\u7528\u6237\u8fdb\u7fa4\u914d\u989d\u9650\u5236"

    invoke-direct {v2, v4, v14, v15, v6}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/shanlitech/et/model/FailUser$ErrorCode;->LIMIT_U_G:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    .line 14
    new-instance v4, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const-string v6, "LIMIT_G_U"

    const/16 v15, 0xd

    const/16 v14, -0xd

    move-object/from16 v17, v2

    const-string v2, "\u7fa4\u7ec4\u6210\u5458\u914d\u989d\u9650\u5236"

    invoke-direct {v4, v6, v15, v14, v2}, Lcom/shanlitech/et/model/FailUser$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/shanlitech/et/model/FailUser$ErrorCode;->LIMIT_G_U:Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/shanlitech/et/model/FailUser$ErrorCode;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v12, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v13, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    aput-object v4, v2, v15

    .line 15
    sput-object v2, Lcom/shanlitech/et/model/FailUser$ErrorCode;->$VALUES:[Lcom/shanlitech/et/model/FailUser$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shanlitech/et/model/FailUser$ErrorCode;->value:I

    .line 3
    iput-object p4, p0, Lcom/shanlitech/et/model/FailUser$ErrorCode;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/model/FailUser$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/FailUser$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/model/FailUser$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/FailUser$ErrorCode;->$VALUES:[Lcom/shanlitech/et/model/FailUser$ErrorCode;

    invoke-virtual {v0}, [Lcom/shanlitech/et/model/FailUser$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/model/FailUser$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/FailUser$ErrorCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/FailUser$ErrorCode;->value:I

    return v0
.end method
