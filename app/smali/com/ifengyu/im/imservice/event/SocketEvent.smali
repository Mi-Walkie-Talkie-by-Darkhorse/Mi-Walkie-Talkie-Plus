.class public final enum Lcom/ifengyu/im/imservice/event/SocketEvent;
.super Ljava/lang/Enum;
.source "SocketEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/SocketEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum CONNECTING_MSG_SERVER:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum CONNECT_MSG_SERVER_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum CONNECT_MSG_SERVER_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum MSG_SERVER_DISCONNECTED:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum NONE:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum REQING_MSG_SERVER_ADDRS:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum REQ_MSG_SERVER_ADDRS_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

.field public static final enum REQ_MSG_SERVER_ADDRS_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->NONE:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "REQING_MSG_SERVER_ADDRS"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQING_MSG_SERVER_ADDRS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "REQ_MSG_SERVER_ADDRS_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "REQ_MSG_SERVER_ADDRS_SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "CONNECTING_MSG_SERVER"

    invoke-direct {v0, v1, v7}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECTING_MSG_SERVER:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "CONNECT_MSG_SERVER_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "CONNECT_MSG_SERVER_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    const-string v1, "MSG_SERVER_DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/SocketEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->MSG_SERVER_DISCONNECTED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/SocketEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->NONE:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQING_MSG_SERVER_ADDRS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->REQ_MSG_SERVER_ADDRS_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECTING_MSG_SERVER:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_SUCCESS:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/im/imservice/event/SocketEvent;->CONNECT_MSG_SERVER_FAILED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/im/imservice/event/SocketEvent;->MSG_SERVER_DISCONNECTED:Lcom/ifengyu/im/imservice/event/SocketEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/SocketEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/SocketEvent;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/SocketEvent;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/SocketEvent;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/SocketEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/SocketEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/SocketEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/SocketEvent;

    return-object v0
.end method
