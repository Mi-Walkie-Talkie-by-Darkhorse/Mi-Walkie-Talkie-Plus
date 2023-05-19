.class public Lcom/huawei/hms/scankit/p/aa;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/aa;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/scankit/p/aa;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/aa;->a:Lcom/huawei/hms/scankit/p/aa;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/huawei/hms/scankit/p/aa;->d()V

    :cond_0
    sget-object v0, Lcom/huawei/hms/scankit/p/aa;->a:Lcom/huawei/hms/scankit/p/aa;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "RootKeyManager"

    const-string v1, "refresh sp aes key"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/s;->a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;

    move-result-object v1

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/aa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/huawei/hms/scankit/p/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "refreshLocalKey(): encrypted key is empty"

    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "flashKeyTime"

    invoke-static {p1, v1, v0, v2, v3}, Lcom/huawei/hms/scankit/p/da;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public static declared-synchronized d()V
    .locals 2

    const-class v0, Lcom/huawei/hms/scankit/p/aa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/aa;->a:Lcom/huawei/hms/scankit/p/aa;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/scankit/p/aa;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/aa;-><init>()V

    sput-object v1, Lcom/huawei/hms/scankit/p/aa;->a:Lcom/huawei/hms/scankit/p/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Privacy_MY"

    const-string v2, "PrivacyData"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/da;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/s;->b(Lcom/huawei/hms/scankit/p/s$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/aa;->a(Ljava/lang/String;)Z

    return-object v0

    :cond_0
    sget-object v2, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/s;->a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;

    move-result-object v3

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/aa;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/huawei/hms/scankit/p/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/huawei/hms/scankit/p/s;->b(Lcom/huawei/hms/scankit/p/s$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/aa;->a(Ljava/lang/String;)Z

    :cond_1
    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/huawei/hms/scankit/p/Z;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/Z;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Z;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v0

    sget-object v1, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/s;->b(Lcom/huawei/hms/scankit/p/s$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/aa;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/aa;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/aa;->b:Ljava/lang/String;

    return-object v0
.end method
