.class public final enum Lcom/ifengyu/intercom/node/ConnectionFailedReason;
.super Ljava/lang/Enum;
.source "ConnectionFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/node/ConnectionFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

.field public static final enum b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

.field public static final enum c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

.field public static final enum d:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

.field public static final enum e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

.field private static final synthetic f:[Lcom/ifengyu/intercom/node/ConnectionFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v1, 0x0

    const-string v2, "TIMEOUT"

    invoke-direct {v0, v2, v1, v1}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->a:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v2, 0x1

    const-string v3, "DENIED"

    invoke-direct {v0, v3, v2, v2}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v3, 0x2

    const-string v4, "VERSION_NOT_SUPPORT"

    invoke-direct {v0, v4, v3, v3}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4, v4}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->d:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v5, 0x4

    const-string v6, "LOWPOWER"

    invoke-direct {v0, v6, v5, v5}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    .line 2
    sget-object v7, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->a:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v7, v6, v1

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v6, v2

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v6, v3

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->d:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->f:[Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionFailedReason;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/ConnectionFailedReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->f:[Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/ConnectionFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    return-object v0
.end method
