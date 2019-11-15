.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
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
    name = "UserStatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

.field public static final enum USER_STATUS_LEAVE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

.field public static final USER_STATUS_LEAVE_VALUE:I = 0x3

.field public static final enum USER_STATUS_OFFLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

.field public static final USER_STATUS_OFFLINE_VALUE:I = 0x2

.field public static final enum USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

.field public static final USER_STATUS_ONLINE_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    const-string v1, "USER_STATUS_ONLINE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    const-string v1, "USER_STATUS_OFFLINE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_OFFLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    const-string v1, "USER_STATUS_LEAVE"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_LEAVE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    new-array v0, v5, [Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_OFFLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_LEAVE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_ONLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_OFFLINE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->USER_STATUS_LEAVE:Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$UserStatType;->value:I

    return v0
.end method
