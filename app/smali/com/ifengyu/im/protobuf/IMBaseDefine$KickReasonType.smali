.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;
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
    name = "KickReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

.field public static final enum KICK_REASON_DUPLICATE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

.field public static final KICK_REASON_DUPLICATE_USER_VALUE:I = 0x1

.field public static final enum KICK_REASON_MOBILE_KICK:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

.field public static final KICK_REASON_MOBILE_KICK_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    const-string v1, "KICK_REASON_DUPLICATE_USER"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->KICK_REASON_DUPLICATE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    const-string v1, "KICK_REASON_MOBILE_KICK"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->KICK_REASON_MOBILE_KICK:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    new-array v0, v4, [Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->KICK_REASON_DUPLICATE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->KICK_REASON_MOBILE_KICK:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->KICK_REASON_DUPLICATE_USER:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->KICK_REASON_MOBILE_KICK:Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$KickReasonType;->value:I

    return v0
.end method
