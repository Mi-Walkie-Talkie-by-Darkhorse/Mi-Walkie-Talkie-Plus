.class Lcom/sina/weibo/sdk/statistic/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/sina/weibo/sdk/statistic/i; = null

.field private static b:Ljava/util/concurrent/CopyOnWriteArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sina/weibo/sdk/statistic/f;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "WBAgent"

    const-string v1, "init handler"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/sina/weibo/sdk/statistic/i;
    .locals 2

    const-class v0, Lcom/sina/weibo/sdk/statistic/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/i;->a:Lcom/sina/weibo/sdk/statistic/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sina/weibo/sdk/statistic/i;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/statistic/i;-><init>()V

    sput-object v1, Lcom/sina/weibo/sdk/statistic/i;->a:Lcom/sina/weibo/sdk/statistic/i;

    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/statistic/i;->a:Lcom/sina/weibo/sdk/statistic/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sina/weibo/sdk/statistic/f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/c;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sina/weibo/sdk/statistic/i$a;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/statistic/i$a;-><init>(Lcom/sina/weibo/sdk/statistic/i;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/weibo/sdk/statistic/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/statistic/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->d:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/statistic/f;->a(Lcom/sina/weibo/sdk/statistic/LogType;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "event--- page:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,event name:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WBAgent"

    invoke-static {p2, p1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event--- page:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,event name:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,extend:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WBAgent"

    invoke-static {p2, p1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p1, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    sget p2, Lcom/sina/weibo/sdk/statistic/i;->c:I

    if-lt p1, p2, :cond_1

    sget-object p1, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p1

    :try_start_1
    sget-object p2, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/statistic/i;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    sget-object p2, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
