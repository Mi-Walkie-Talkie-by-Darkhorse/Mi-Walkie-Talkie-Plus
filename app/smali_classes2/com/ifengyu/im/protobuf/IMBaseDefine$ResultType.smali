.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;
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
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final enum REFUSE_REASON_CONNECT_MIXUN_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_CONNECT_MIXUN_FAILED_VALUE:I = 0x8

.field public static final enum REFUSE_REASON_DB_VALIDATE_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_DB_VALIDATE_FAILED_VALUE:I = 0x6

.field public static final enum REFUSE_REASON_MSG_SERVER_FULL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_MSG_SERVER_FULL_VALUE:I = 0x2

.field public static final enum REFUSE_REASON_NONE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_NONE_VALUE:I = 0x0

.field public static final enum REFUSE_REASON_NO_DB_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_NO_DB_SERVER_VALUE:I = 0x3

.field public static final enum REFUSE_REASON_NO_LOGIN_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_NO_LOGIN_SERVER_VALUE:I = 0x4

.field public static final enum REFUSE_REASON_NO_MSG_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_NO_MSG_SERVER_VALUE:I = 0x1

.field public static final enum REFUSE_REASON_NO_ROUTE_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_NO_ROUTE_SERVER_VALUE:I = 0x5

.field public static final enum REFUSE_REASON_VERSION_TOO_OLD:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

.field public static final REFUSE_REASON_VERSION_TOO_OLD_VALUE:I = 0x7

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;",
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

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_NONE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NONE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_NO_MSG_SERVER"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_MSG_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_MSG_SERVER_FULL"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_MSG_SERVER_FULL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_NO_DB_SERVER"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_DB_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_NO_LOGIN_SERVER"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_LOGIN_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_NO_ROUTE_SERVER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_ROUTE_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_DB_VALIDATE_FAILED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_DB_VALIDATE_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_VERSION_TOO_OLD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_VERSION_TOO_OLD:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const-string v1, "REFUSE_REASON_CONNECT_MIXUN_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_CONNECT_MIXUN_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NONE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_MSG_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_MSG_SERVER_FULL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_DB_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_LOGIN_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_ROUTE_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_DB_VALIDATE_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_VERSION_TOO_OLD:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_CONNECT_MIXUN_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NONE:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_MSG_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_MSG_SERVER_FULL:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_DB_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_LOGIN_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_NO_ROUTE_SERVER:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_DB_VALIDATE_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_VERSION_TOO_OLD:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->REFUSE_REASON_CONNECT_MIXUN_FAILED:Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$ResultType;->value:I

    return v0
.end method
