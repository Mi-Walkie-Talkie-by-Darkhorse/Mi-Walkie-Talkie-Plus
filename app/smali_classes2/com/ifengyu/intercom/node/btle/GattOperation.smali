.class public final enum Lcom/ifengyu/intercom/node/btle/GattOperation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/node/btle/GattOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum c:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum d:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum e:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum f:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum g:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum h:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field public static final enum i:Lcom/ifengyu/intercom/node/btle/GattOperation;

.field private static final synthetic j:[Lcom/ifengyu/intercom/node/btle/GattOperation;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v1, 0x0

    const-string v2, "NO_OPERATION"

    invoke-direct {v0, v2, v1, v2}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v2, 0x1

    const-string v3, "CONNECT"

    invoke-direct {v0, v3, v2, v3}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v3, 0x2

    const-string v4, "DISCONNECT"

    invoke-direct {v0, v4, v3, v4}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v4, 0x3

    const-string v5, "DISCOVER_SERVICES"

    invoke-direct {v0, v5, v4, v5}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v5, 0x4

    const-string v6, "REQUEST_MTU"

    invoke-direct {v0, v6, v5, v6}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v6, 0x5

    const-string v7, "WRITE_CHARACTERISTIC"

    invoke-direct {v0, v7, v6, v7}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v7, 0x6

    const-string v8, "WRITE_DESCRIPTOR"

    invoke-direct {v0, v8, v7, v8}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    new-instance v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/4 v8, 0x7

    const-string v9, "READ_CHARACTERISTIC"

    invoke-direct {v0, v9, v8, v9}, Lcom/ifengyu/intercom/node/btle/GattOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->i:Lcom/ifengyu/intercom/node/btle/GattOperation;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/ifengyu/intercom/node/btle/GattOperation;

    sget-object v10, Lcom/ifengyu/intercom/node/btle/GattOperation;->b:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v10, v9, v1

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->c:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v9, v2

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->d:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v9, v3

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->e:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v9, v4

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->f:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v9, v5

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->g:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v9, v6

    sget-object v1, Lcom/ifengyu/intercom/node/btle/GattOperation;->h:Lcom/ifengyu/intercom/node/btle/GattOperation;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/ifengyu/intercom/node/btle/GattOperation;->j:[Lcom/ifengyu/intercom/node/btle/GattOperation;

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

    iput-object p3, p0, Lcom/ifengyu/intercom/node/btle/GattOperation;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/btle/GattOperation;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/btle/GattOperation;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/btle/GattOperation;->j:[Lcom/ifengyu/intercom/node/btle/GattOperation;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/btle/GattOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/btle/GattOperation;

    return-object v0
.end method
