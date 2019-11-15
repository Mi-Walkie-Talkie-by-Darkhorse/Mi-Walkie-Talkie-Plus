.class public final enum Lcom/ifengyu/intercom/node/ConnectionFailedReason;
.super Ljava/lang/Enum;
.source "ConnectionFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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

.field private static final synthetic g:[Lcom/ifengyu/intercom/node/ConnectionFailedReason;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v2, v2}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->a:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v3, v3}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const-string v1, "VERSION_NOT_SUPPORT"

    invoke-direct {v0, v1, v4, v4}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->d:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    new-instance v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const-string v1, "LOWPOWER"

    invoke-direct {v0, v1, v6, v6}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->a:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->b:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->c:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->d:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->e:Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->g:[Lcom/ifengyu/intercom/node/ConnectionFailedReason;

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

    iput p3, p0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/ConnectionFailedReason;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/ConnectionFailedReason;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->g:[Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/ConnectionFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/ConnectionFailedReason;

    return-object v0
.end method
