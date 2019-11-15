.class public Lcom/xiaomi/mistatistic/sdk/network/a;
.super Ljava/lang/Object;
.source "DNSThreadPool.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/mistatistic/sdk/network/a;->a:I

    sput v0, Lcom/xiaomi/mistatistic/sdk/network/a;->b:I

    sput v0, Lcom/xiaomi/mistatistic/sdk/network/a;->c:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/network/a;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/xiaomi/mistatistic/sdk/network/a;->a:I

    sget v3, Lcom/xiaomi/mistatistic/sdk/network/a;->b:I

    sget v0, Lcom/xiaomi/mistatistic/sdk/network/a;->c:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/xiaomi/mistatistic/sdk/network/a;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/network/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/network/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
