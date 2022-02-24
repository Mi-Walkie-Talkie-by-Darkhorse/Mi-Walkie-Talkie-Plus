.class public final enum Lcom/xiaomi/push/fl;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/fl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/fl;

.field private static final synthetic a:[Lcom/xiaomi/push/fl;

.field public static final enum b:Lcom/xiaomi/push/fl;

.field public static final enum c:Lcom/xiaomi/push/fl;

.field public static final enum d:Lcom/xiaomi/push/fl;

.field public static final enum e:Lcom/xiaomi/push/fl;

.field public static final enum f:Lcom/xiaomi/push/fl;

.field public static final enum g:Lcom/xiaomi/push/fl;

.field public static final enum h:Lcom/xiaomi/push/fl;

.field public static final enum i:Lcom/xiaomi/push/fl;

.field public static final enum j:Lcom/xiaomi/push/fl;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_REGISTER"

    const/4 v2, 0x0

    const-string v3, "register"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->a:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_UNREGISTER"

    const/4 v2, 0x1

    const-string v3, "unregister"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->b:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_SET_ALIAS"

    const/4 v2, 0x2

    const-string v3, "set-alias"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->c:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_UNSET_ALIAS"

    const/4 v2, 0x3

    const-string v3, "unset-alias"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->d:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_SET_ACCOUNT"

    const/4 v2, 0x4

    const-string v3, "set-account"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->e:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_UNSET_ACCOUNT"

    const/4 v2, 0x5

    const-string v3, "unset-account"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->f:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_SUBSCRIBE_TOPIC"

    const/4 v2, 0x6

    const-string v3, "subscribe-topic"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->g:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_UNSUBSCRIBE_TOPIC"

    const/4 v2, 0x7

    const-string v3, "unsubscibe-topic"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->h:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_SET_ACCEPT_TIME"

    const/16 v2, 0x8

    const-string v3, "accept-time"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->i:Lcom/xiaomi/push/fl;

    new-instance v0, Lcom/xiaomi/push/fl;

    const-string v1, "COMMAND_CHK_VDEVID"

    const/16 v2, 0x9

    const-string v3, "check-vdeviceid"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/fl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/fl;->j:Lcom/xiaomi/push/fl;

    invoke-static {}, Lcom/xiaomi/push/fl;->a()[Lcom/xiaomi/push/fl;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/fl;->a:[Lcom/xiaomi/push/fl;

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

    iput-object p3, p0, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/fl;->values()[Lcom/xiaomi/push/fl;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/xiaomi/push/fl;->a:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/xiaomi/push/em;->a(Ljava/lang/Enum;)I

    move-result v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static synthetic a()[Lcom/xiaomi/push/fl;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaomi/push/fl;

    sget-object v1, Lcom/xiaomi/push/fl;->a:Lcom/xiaomi/push/fl;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->b:Lcom/xiaomi/push/fl;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->c:Lcom/xiaomi/push/fl;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->d:Lcom/xiaomi/push/fl;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->e:Lcom/xiaomi/push/fl;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->f:Lcom/xiaomi/push/fl;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->g:Lcom/xiaomi/push/fl;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->h:Lcom/xiaomi/push/fl;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->i:Lcom/xiaomi/push/fl;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/fl;->j:Lcom/xiaomi/push/fl;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/fl;
    .locals 1

    const-class v0, Lcom/xiaomi/push/fl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/fl;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/fl;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/fl;->a:[Lcom/xiaomi/push/fl;

    invoke-virtual {v0}, [Lcom/xiaomi/push/fl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/fl;

    return-object v0
.end method
