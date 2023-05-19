.class public Lcom/xiaomi/push/hm;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/push/an;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/push/an;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/an;-><init>(ZI)V

    sput-object v0, Lcom/xiaomi/push/hm;->a:Lcom/xiaomi/push/an;

    return-void
.end method

.method public static a(Lcom/xiaomi/push/an$b;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hm;->a:Lcom/xiaomi/push/an;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an$b;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/push/an$b;J)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/hm;->a:Lcom/xiaomi/push/an;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an$b;J)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/push/hm;->a:Lcom/xiaomi/push/an;

    new-instance v1, Lcom/xiaomi/push/hn;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/hn;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an$b;)V

    return-void
.end method
