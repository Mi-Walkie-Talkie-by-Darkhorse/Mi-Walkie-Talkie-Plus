.class Lcom/sina/weibo/sdk/statistic/i;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"


# static fields
.field private static a:Lcom/sina/weibo/sdk/statistic/i;

.field private static b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sina/weibo/sdk/statistic/f;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/statistic/f;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/sina/weibo/sdk/statistic/i;->d:I

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

    sput-object v0, Lcom/sina/weibo/sdk/statistic/i;->c:Ljava/util/Map;

    const-string v0, "WBAgent"

    const-string v1, "init handler"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/sina/weibo/sdk/statistic/i;
    .locals 2

    const-class v1, Lcom/sina/weibo/sdk/statistic/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/i;->a:Lcom/sina/weibo/sdk/statistic/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/weibo/sdk/statistic/i;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/statistic/i;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/statistic/i;->a:Lcom/sina/weibo/sdk/statistic/i;

    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/i;->a:Lcom/sina/weibo/sdk/statistic/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sina/weibo/sdk/statistic/f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/statistic/c;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/statistic/i$1;

    invoke-direct {v1, p0, v0}, Lcom/sina/weibo/sdk/statistic/i$1;-><init>(Lcom/sina/weibo/sdk/statistic/i;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sina/weibo/sdk/statistic/h;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sina/weibo/sdk/statistic/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/statistic/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->d:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/statistic/b;->a(Lcom/sina/weibo/sdk/statistic/LogType;)V

    sget-object v1, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    const-string v0, "WBAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event--- page:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,event name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    sget v1, Lcom/sina/weibo/sdk/statistic/i;->d:I

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/statistic/i;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    sget-object v0, Lcom/sina/weibo/sdk/statistic/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const-string v0, "WBAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event--- page:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,event name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,extend:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
