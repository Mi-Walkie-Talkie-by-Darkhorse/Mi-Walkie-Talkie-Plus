.class public final enum Lcom/ifengyu/intercom/node/btle/GattOperation;
.super Ljava/lang/Enum;
.source "GattOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/node/btle/GattOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum b:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum c:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum d:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum e:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum f:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum g:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum h:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field private static final synthetic j:[Lcom/ifengyu/intercom/node/btle/GattOperation;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "NO_OPERATION"

    const-string v2, "NO_OPERATION"

    invoke-direct {v0, v1, v4, v2}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "CONNECT"

    const-string v2, "CONNECT"

    invoke-direct {v0, v1, v5, v2}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "DISCONNECT"

    const-string v2, "DISCONNECT"

    invoke-direct {v0, v1, v6, v2}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "DISCOVER_SERVICES"

    const-string v2, "DISCOVER_SERVICES"

    invoke-direct {v0, v1, v7, v2}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "REQUEST_MTU"

    const-string v2, "REQUEST_MTU"

    invoke-direct {v0, v1, v8, v2}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "WRITE_CHARACTERISTIC"

    const/4 v2, 0x5

    const-string v3, "WRITE_CHARACTERISTIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "WRITE_DESCRIPTOR"

    const/4 v2, 0x6

    const-string v3, "WRITE_DESCRIPTOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const-string v1, "READ_CHARACTERISTIC"

    const/4 v2, 0x7

    const-string v3, "READ_CHARACTERISTIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ifengyu/intercom/node/btle/GattOperation;

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->j:[Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ifengyu/intercom/node/btle/GattOperation;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/btle/GattOperation;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/btle/GattOperation;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->j:[Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/btle/GattOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-object v0
.end method
