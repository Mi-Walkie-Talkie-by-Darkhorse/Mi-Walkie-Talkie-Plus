.class public final enum Lcom/xiaomi/push/hc$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/hc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/hc$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/hc$b;

.field private static final synthetic a:[Lcom/xiaomi/push/hc$b;

.field public static final enum b:Lcom/xiaomi/push/hc$b;

.field public static final enum c:Lcom/xiaomi/push/hc$b;

.field public static final enum d:Lcom/xiaomi/push/hc$b;

.field public static final enum e:Lcom/xiaomi/push/hc$b;

.field public static final enum f:Lcom/xiaomi/push/hc$b;

.field public static final enum g:Lcom/xiaomi/push/hc$b;

.field public static final enum h:Lcom/xiaomi/push/hc$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "available"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->a:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "unavailable"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->b:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "subscribe"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->c:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "subscribed"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->d:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "unsubscribe"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->e:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "unsubscribed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->f:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->g:Lcom/xiaomi/push/hc$b;

    new-instance v0, Lcom/xiaomi/push/hc$b;

    const-string v1, "probe"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/hc$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/hc$b;->h:Lcom/xiaomi/push/hc$b;

    invoke-static {}, Lcom/xiaomi/push/hc$b;->a()[Lcom/xiaomi/push/hc$b;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hc$b;->a:[Lcom/xiaomi/push/hc$b;

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

.method private static synthetic a()[Lcom/xiaomi/push/hc$b;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/push/hc$b;

    sget-object v1, Lcom/xiaomi/push/hc$b;->a:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->b:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->c:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->d:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->e:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->f:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->g:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/hc$b;->h:Lcom/xiaomi/push/hc$b;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hc$b;
    .locals 1

    const-class v0, Lcom/xiaomi/push/hc$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/hc$b;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/hc$b;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hc$b;->a:[Lcom/xiaomi/push/hc$b;

    invoke-virtual {v0}, [Lcom/xiaomi/push/hc$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/hc$b;

    return-object v0
.end method
