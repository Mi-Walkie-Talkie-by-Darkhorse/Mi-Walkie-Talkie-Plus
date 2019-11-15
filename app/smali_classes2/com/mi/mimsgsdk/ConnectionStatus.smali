.class public final enum Lcom/mi/mimsgsdk/ConnectionStatus;
.super Ljava/lang/Enum;
.source "ConnectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/mimsgsdk/ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/mimsgsdk/ConnectionStatus;

.field public static final enum connected:Lcom/mi/mimsgsdk/ConnectionStatus;

.field public static final enum connecting:Lcom/mi/mimsgsdk/ConnectionStatus;

.field public static final enum disconnected:Lcom/mi/mimsgsdk/ConnectionStatus;

.field public static final enum logined:Lcom/mi/mimsgsdk/ConnectionStatus;

.field public static final enum logining:Lcom/mi/mimsgsdk/ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    const-string v1, "disconnected"

    invoke-direct {v0, v1, v2}, Lcom/mi/mimsgsdk/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->disconnected:Lcom/mi/mimsgsdk/ConnectionStatus;

    new-instance v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    const-string v1, "connecting"

    invoke-direct {v0, v1, v3}, Lcom/mi/mimsgsdk/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->connecting:Lcom/mi/mimsgsdk/ConnectionStatus;

    new-instance v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    const-string v1, "connected"

    invoke-direct {v0, v1, v4}, Lcom/mi/mimsgsdk/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->connected:Lcom/mi/mimsgsdk/ConnectionStatus;

    new-instance v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    const-string v1, "logining"

    invoke-direct {v0, v1, v5}, Lcom/mi/mimsgsdk/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->logining:Lcom/mi/mimsgsdk/ConnectionStatus;

    new-instance v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    const-string v1, "logined"

    invoke-direct {v0, v1, v6}, Lcom/mi/mimsgsdk/ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->logined:Lcom/mi/mimsgsdk/ConnectionStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mi/mimsgsdk/ConnectionStatus;

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->disconnected:Lcom/mi/mimsgsdk/ConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->connecting:Lcom/mi/mimsgsdk/ConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->connected:Lcom/mi/mimsgsdk/ConnectionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->logining:Lcom/mi/mimsgsdk/ConnectionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/mimsgsdk/ConnectionStatus;->logined:Lcom/mi/mimsgsdk/ConnectionStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->$VALUES:[Lcom/mi/mimsgsdk/ConnectionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/mimsgsdk/ConnectionStatus;
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/ConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/mi/mimsgsdk/ConnectionStatus;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/ConnectionStatus;->$VALUES:[Lcom/mi/mimsgsdk/ConnectionStatus;

    invoke-virtual {v0}, [Lcom/mi/mimsgsdk/ConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/mimsgsdk/ConnectionStatus;

    return-object v0
.end method
