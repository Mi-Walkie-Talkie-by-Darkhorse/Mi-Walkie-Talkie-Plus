.class public final enum Lcom/xiaomi/push/p;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/push/p;

.field private static final synthetic a:[Lcom/xiaomi/push/p;

.field public static final enum b:Lcom/xiaomi/push/p;

.field public static final enum c:Lcom/xiaomi/push/p;

.field public static final enum d:Lcom/xiaomi/push/p;

.field public static final enum e:Lcom/xiaomi/push/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/p;

    const-string v1, "China"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/p;->a:Lcom/xiaomi/push/p;

    new-instance v0, Lcom/xiaomi/push/p;

    const-string v1, "Global"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/p;->b:Lcom/xiaomi/push/p;

    new-instance v0, Lcom/xiaomi/push/p;

    const-string v1, "Europe"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    new-instance v0, Lcom/xiaomi/push/p;

    const-string v1, "Russia"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/p;->d:Lcom/xiaomi/push/p;

    new-instance v0, Lcom/xiaomi/push/p;

    const-string v1, "India"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/push/p;->e:Lcom/xiaomi/push/p;

    invoke-static {}, Lcom/xiaomi/push/p;->a()[Lcom/xiaomi/push/p;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/p;->a:[Lcom/xiaomi/push/p;

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

.method private static synthetic a()[Lcom/xiaomi/push/p;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/push/p;

    sget-object v1, Lcom/xiaomi/push/p;->a:Lcom/xiaomi/push/p;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/p;->b:Lcom/xiaomi/push/p;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/p;->c:Lcom/xiaomi/push/p;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/p;->d:Lcom/xiaomi/push/p;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/p;->e:Lcom/xiaomi/push/p;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/p;
    .locals 1

    const-class v0, Lcom/xiaomi/push/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/p;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/p;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/p;->a:[Lcom/xiaomi/push/p;

    invoke-virtual {v0}, [Lcom/xiaomi/push/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/p;

    return-object v0
.end method
