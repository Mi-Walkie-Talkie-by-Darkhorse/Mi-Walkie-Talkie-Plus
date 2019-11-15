.class public final enum Lcom/ifengyu/im/imservice/event/LoginEvent;
.super Ljava/lang/Enum;
.source "LoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/LoginEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum KICK_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum KICK_PC_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum KICK_PC_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOCAL_LOGIN_MSG_SERVICE:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOCAL_LOGIN_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOGINING:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOGIN_OK:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum LOGIN_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum NONE:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum PC_OFFLINE:Lcom/ifengyu/im/imservice/event/LoginEvent;

.field public static final enum PC_ONLINE:Lcom/ifengyu/im/imservice/event/LoginEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->NONE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOGINING"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGINING:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOGIN_OK"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OK:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOGIN_INNER_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOGIN_AUTH_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOGIN_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOCAL_LOGIN_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "LOCAL_LOGIN_MSG_SERVICE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_MSG_SERVICE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "PC_ONLINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->PC_ONLINE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "PC_OFFLINE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->PC_OFFLINE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "KICK_PC_SUCCESS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "KICK_PC_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    const-string v1, "KICK_OUT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/LoginEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/LoginEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->NONE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGINING:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OK:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_INNER_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_AUTH_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOGIN_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->LOCAL_LOGIN_MSG_SERVICE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->PC_ONLINE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->PC_OFFLINE:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_SUCCESS:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_PC_FAILED:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ifengyu/im/imservice/event/LoginEvent;->KICK_OUT:Lcom/ifengyu/im/imservice/event/LoginEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/LoginEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/LoginEvent;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/LoginEvent;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/LoginEvent;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/LoginEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/LoginEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/LoginEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/LoginEvent;

    return-object v0
.end method
