.class public Lcom/huawei/hms/scankit/p/S;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/S$a;
    }
.end annotation


# static fields
.field public static a:Lcom/huawei/hms/scankit/p/S;


# instance fields
.field public b:Lcom/huawei/hms/scankit/p/S$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/S;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/S;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/S;->a:Lcom/huawei/hms/scankit/p/S;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/scankit/p/S$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/p/S$a;-><init>(Lcom/huawei/hms/scankit/p/S;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/scankit/p/S;)Lcom/huawei/hms/scankit/p/S$a;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/huawei/hms/scankit/p/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "hianalytics_njjn"

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/m;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    const-string v2, "hmsSdk"

    const-string v3, "read pubKey error,the file is corrupted"

    :try_start_3
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/huawei/hms/scankit/p/m;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/m;->a(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/S;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/S;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "hmsSdk"

    const-string v1, "get rsa pubkey config error"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v3

    sget-object v4, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v3, v4}, Lcom/huawei/hms/scankit/p/s;->b(Lcom/huawei/hms/scankit/p/s$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v4

    sget-object v5, Lcom/huawei/hms/scankit/p/s$a;->b:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v4, v5}, Lcom/huawei/hms/scankit/p/s;->a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/huawei/hms/scankit/p/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v5, v2}, Lcom/huawei/hms/scankit/p/S$a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/scankit/p/S$a;->a(J)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/S$a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v0, v4}, Lcom/huawei/hms/scankit/p/S$a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x2932e00

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    iget-object v0, v0, Lcom/huawei/hms/scankit/p/S$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v1

    sget-object v4, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v1, v4}, Lcom/huawei/hms/scankit/p/s;->b(Lcom/huawei/hms/scankit/p/s$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/huawei/hms/scankit/p/s;->a()Lcom/huawei/hms/scankit/p/s;

    move-result-object v4

    sget-object v5, Lcom/huawei/hms/scankit/p/s$a;->b:Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v4, v5}, Lcom/huawei/hms/scankit/p/s;->a(Lcom/huawei/hms/scankit/p/s$a;)Lcom/huawei/hms/scankit/p/w;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/huawei/hms/scankit/p/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v4, v2, v3}, Lcom/huawei/hms/scankit/p/S$a;->a(J)V

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/scankit/p/S$a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/S$a;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    iget-object v0, v0, Lcom/huawei/hms/scankit/p/S$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    iget-object v0, v0, Lcom/huawei/hms/scankit/p/S$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S;->b:Lcom/huawei/hms/scankit/p/S$a;

    iget-wide v0, v0, Lcom/huawei/hms/scankit/p/S$a;->d:J

    return-wide v0
.end method
