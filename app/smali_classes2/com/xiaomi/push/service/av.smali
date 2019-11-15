.class public Lcom/xiaomi/push/service/av;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/av$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static e:Lcom/xiaomi/push/service/av;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/av$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaomi/push/protobuf/a$a;

.field private d:Lcom/xiaomi/channel/commonutils/misc/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/av;

    invoke-direct {v0}, Lcom/xiaomi/push/service/av;-><init>()V

    sput-object v0, Lcom/xiaomi/push/service/av;->e:Lcom/xiaomi/push/service/av;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/av;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/av;Lcom/xiaomi/channel/commonutils/misc/i$b;)Lcom/xiaomi/channel/commonutils/misc/i$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/av;->d:Lcom/xiaomi/channel/commonutils/misc/i$b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/push/service/av;Lcom/xiaomi/push/protobuf/a$a;)Lcom/xiaomi/push/protobuf/a$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/push/service/av;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/av;->e:Lcom/xiaomi/push/service/av;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/av;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/av;->i()V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/push/service/av;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/push/service/av;)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    return-object v0
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/xiaomi/push/service/av;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/j;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "XMPushServiceConfig"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "DeviceUUID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/j;->b()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "DeviceUUID"

    sget-object v3, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/av;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/av;->h()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->d:Lcom/xiaomi/channel/commonutils/misc/i$b;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/push/service/aw;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aw;-><init>(Lcom/xiaomi/push/service/av;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/av;->d:Lcom/xiaomi/channel/commonutils/misc/i$b;

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->d:Lcom/xiaomi/channel/commonutils/misc/i$b;

    invoke-static {v0}, Lcom/xiaomi/smack/util/e;->a(Lcom/xiaomi/channel/commonutils/misc/i$b;)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/j;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "XMCloudCfg"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/google/protobuf/micro/b;->a(Ljava/io/InputStream;)Lcom/google/protobuf/micro/b;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/protobuf/a$a;->c(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/protobuf/a$a;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/a$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load config failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private i()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/channel/commonutils/android/j;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "XMCloudCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/google/protobuf/micro/c;->a(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/c;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/protobuf/a$a;->a(Lcom/google/protobuf/micro/c;)V

    invoke-virtual {v0}, Lcom/google/protobuf/micro/c;->a()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/xiaomi/push/protobuf/b$b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/b$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/push/protobuf/b$b;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/av;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/av;->g()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/push/service/av;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/xiaomi/push/service/av$a;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/av$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/xiaomi/push/service/av$a;->a(Lcom/xiaomi/push/protobuf/b$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/av$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/av;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/service/av;->f()V

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/protobuf/a$a;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/push/service/av;->f()V

    iget-object v0, p0, Lcom/xiaomi/push/service/av;->c:Lcom/xiaomi/push/protobuf/a$a;

    return-object v0
.end method
