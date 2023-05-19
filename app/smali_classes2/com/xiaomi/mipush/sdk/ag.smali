.class public final enum Lcom/xiaomi/mipush/sdk/ag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/mipush/sdk/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/mipush/sdk/ag;

.field private static final synthetic a:[Lcom/xiaomi/mipush/sdk/ag;

.field public static final enum b:Lcom/xiaomi/mipush/sdk/ag;

.field public static final enum c:Lcom/xiaomi/mipush/sdk/ag;

.field public static final enum d:Lcom/xiaomi/mipush/sdk/ag;

.field public static final enum e:Lcom/xiaomi/mipush/sdk/ag;

.field public static final enum f:Lcom/xiaomi/mipush/sdk/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/mipush/sdk/ag;

    const-string v1, "HUAWEI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->a:Lcom/xiaomi/mipush/sdk/ag;

    new-instance v0, Lcom/xiaomi/mipush/sdk/ag;

    const-string v1, "MEIZU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->b:Lcom/xiaomi/mipush/sdk/ag;

    new-instance v0, Lcom/xiaomi/mipush/sdk/ag;

    const-string v1, "FCM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->c:Lcom/xiaomi/mipush/sdk/ag;

    new-instance v0, Lcom/xiaomi/mipush/sdk/ag;

    const-string v1, "OPPO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->d:Lcom/xiaomi/mipush/sdk/ag;

    new-instance v0, Lcom/xiaomi/mipush/sdk/ag;

    const-string v1, "VIVO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->e:Lcom/xiaomi/mipush/sdk/ag;

    new-instance v0, Lcom/xiaomi/mipush/sdk/ag;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/ag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->f:Lcom/xiaomi/mipush/sdk/ag;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/ag;->a()[Lcom/xiaomi/mipush/sdk/ag;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/ag;->a:[Lcom/xiaomi/mipush/sdk/ag;

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

.method private static synthetic a()[Lcom/xiaomi/mipush/sdk/ag;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/mipush/sdk/ag;

    sget-object v1, Lcom/xiaomi/mipush/sdk/ag;->a:Lcom/xiaomi/mipush/sdk/ag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/ag;->b:Lcom/xiaomi/mipush/sdk/ag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/ag;->c:Lcom/xiaomi/mipush/sdk/ag;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/ag;->d:Lcom/xiaomi/mipush/sdk/ag;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/ag;->e:Lcom/xiaomi/mipush/sdk/ag;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/ag;->f:Lcom/xiaomi/mipush/sdk/ag;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ag;
    .locals 1

    const-class v0, Lcom/xiaomi/mipush/sdk/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mipush/sdk/ag;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/mipush/sdk/ag;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/ag;->a:[Lcom/xiaomi/mipush/sdk/ag;

    invoke-virtual {v0}, [Lcom/xiaomi/mipush/sdk/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mipush/sdk/ag;

    return-object v0
.end method
