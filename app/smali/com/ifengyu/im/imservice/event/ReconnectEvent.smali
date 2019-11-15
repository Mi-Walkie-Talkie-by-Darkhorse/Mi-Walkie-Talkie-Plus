.class public final enum Lcom/ifengyu/im/imservice/event/ReconnectEvent;
.super Ljava/lang/Enum;
.source "ReconnectEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/ReconnectEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/ReconnectEvent;

.field public static final enum DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

.field public static final enum NONE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

.field public static final enum SUCCESS:Lcom/ifengyu/im/imservice/event/ReconnectEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/ReconnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->NONE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/ReconnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->SUCCESS:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/ReconnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->NONE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->SUCCESS:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->DISABLE:Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/ReconnectEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/ReconnectEvent;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/ReconnectEvent;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/ReconnectEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/ReconnectEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/ReconnectEvent;

    return-object v0
.end method
