.class public Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/xmpush/thrift/e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

.field private c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->b:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/xiaomi/mipush/sdk/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/s;-><init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private a()V
    .locals 7

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->e:Ljava/lang/Runnable;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->a()V

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/xmpush/thrift/e;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->b:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->b:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Lcom/xiaomi/xmpush/thrift/e;

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x7800

    invoke-static {v3, v1, v2, v4}, Lcom/xiaomi/push/service/ay;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/xmpush/thrift/af;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiTinyDataClient Send item by PushServiceClient.sendMessage(XmActionNotification)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/e;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->b:Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;->a(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/z;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v6, v5}, Lcom/xiaomi/mipush/sdk/z;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/s;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->b()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/xmpush/thrift/e;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/mipush/sdk/r;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mipush/sdk/r;-><init>(Lcom/xiaomi/mipush/sdk/MiTinyDataClient$a$a;Lcom/xiaomi/xmpush/thrift/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
