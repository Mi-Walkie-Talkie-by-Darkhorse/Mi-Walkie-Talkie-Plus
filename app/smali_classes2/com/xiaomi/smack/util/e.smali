.class public Lcom/xiaomi/smack/util/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/channel/commonutils/misc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/channel/commonutils/misc/i;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/channel/commonutils/misc/i;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/smack/util/e;->a:Lcom/xiaomi/channel/commonutils/misc/i;

    return-void
.end method

.method public static a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/util/e;->a:Lcom/xiaomi/channel/commonutils/misc/i;

    invoke-virtual {v0, p0}, Lcom/xiaomi/channel/commonutils/misc/i;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/channel/commonutils/misc/i$b;J)V
    .locals 1

    sget-object v0, Lcom/xiaomi/smack/util/e;->a:Lcom/xiaomi/channel/commonutils/misc/i;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/channel/commonutils/misc/i;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;J)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/smack/util/e;->a:Lcom/xiaomi/channel/commonutils/misc/i;

    new-instance v1, Lcom/xiaomi/smack/util/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/smack/util/f;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/commonutils/misc/i;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V

    return-void
.end method
