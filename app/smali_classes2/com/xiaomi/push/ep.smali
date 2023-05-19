.class Lcom/xiaomi/push/ep;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/xiaomi/push/eu;
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->bs:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v0

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput v0, Lcom/xiaomi/push/ep;->a:I

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/push/fa;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/fa;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/push/fb;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/fb;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/xiaomi/push/ez;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/ez;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/xiaomi/push/fa;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/fa;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
