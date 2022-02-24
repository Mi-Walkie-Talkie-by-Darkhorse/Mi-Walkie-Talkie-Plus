.class public Lcom/umeng/commonsdk/UMConfigureImpl;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"


# static fields
.field private static a:Ljava/lang/String; = "delayed_transmission_flag_new"

.field private static b:Ljava/util/concurrent/CopyOnWriteArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/umeng/commonsdk/utils/onMessageSendListener;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I = 0x0

.field private static d:Z = false

.field private static final e:I = 0x3e8

.field private static f:Ljava/util/concurrent/ScheduledExecutorService;

.field private static g:Landroid/content/Context;

.field private static h:I

.field private static i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    .line 3
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    .line 4
    sput v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    .line 5
    new-instance v0, Lcom/umeng/commonsdk/UMConfigureImpl$1;

    invoke-direct {v0}, Lcom/umeng/commonsdk/UMConfigureImpl$1;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    return v0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 2
    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 4
    sput-boolean p0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    return p0
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    return v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    const-class p0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V

    .line 3
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/utils/onMessageSendListener;

    .line 5
    invoke-interface {v1}, Lcom/umeng/commonsdk/utils/onMessageSendListener;->onMessageSend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6
    :catch_0
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigureImpl;->d:Z

    return v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    .line 3
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method static synthetic e()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic f()I
    .locals 2

    .line 1
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/commonsdk/UMConfigureImpl;->h:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sput-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->g:Landroid/content/Context;

    .line 2
    :try_start_0
    sget v0, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 3
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V

    .line 5
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigureImpl;->c(Landroid/content/Context;)V

    .line 6
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p0, :cond_3

    .line 7
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Lcom/umeng/commonsdk/UMConfigureImpl;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    sget-object v3, Lcom/umeng/commonsdk/UMConfigureImpl;->i:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->setTransmissionSendFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public static declared-synchronized registerInterruptFlag()V
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2
    :catch_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized registerMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 5
    sget-object p0, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/utils/onMessageSendListener;

    .line 6
    invoke-interface {v1}, Lcom/umeng/commonsdk/utils/onMessageSendListener;->onMessageSend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 7
    :catch_0
    :cond_1
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeInterruptFlag()V
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/umeng/commonsdk/UMConfigureImpl;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2
    :catch_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeMessageSendListener(Lcom/umeng/commonsdk/utils/onMessageSendListener;)V
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 3
    :catch_0
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method
