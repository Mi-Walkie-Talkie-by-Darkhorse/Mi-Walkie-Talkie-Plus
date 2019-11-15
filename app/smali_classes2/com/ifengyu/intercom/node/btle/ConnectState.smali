.class public final enum Lcom/ifengyu/intercom/node/btle/ConnectState;
.super Ljava/lang/Enum;
.source "ConnectState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/node/btle/ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/node/btle/ConnectState;

.field public static final enum b:Lcom/ifengyu/intercom/node/btle/ConnectState;

.field public static final enum c:Lcom/ifengyu/intercom/node/btle/ConnectState;

.field private static final synthetic e:[Lcom/ifengyu/intercom/node/btle/ConnectState;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/ConnectState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2, v2}, Lcom/ifengyu/intercom/node/btle/ConnectState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/ConnectState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3, v3}, Lcom/ifengyu/intercom/node/btle/ConnectState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/ConnectState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/ifengyu/intercom/node/btle/ConnectState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ifengyu/intercom/node/btle/ConnectState;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->a:Lcom/ifengyu/intercom/node/btle/ConnectState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->b:Lcom/ifengyu/intercom/node/btle/ConnectState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/intercom/node/btle/ConnectState;->c:Lcom/ifengyu/intercom/node/btle/ConnectState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->e:[Lcom/ifengyu/intercom/node/btle/ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ifengyu/intercom/node/btle/ConnectState;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/btle/ConnectState;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/btle/ConnectState;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/btle/ConnectState;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/btle/ConnectState;->e:[Lcom/ifengyu/intercom/node/btle/ConnectState;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/btle/ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/btle/ConnectState;

    return-object v0
.end method
