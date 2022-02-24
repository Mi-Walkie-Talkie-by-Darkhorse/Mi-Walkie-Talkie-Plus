.class public Lcom/umeng/commonsdk/statistics/idtracking/j;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "OldUMIDTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "oldumid"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "oldumid"

    .line 1
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->b:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    :try_start_0
    const-string v0, "/data/local/tmp/.um"

    .line 1
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private k()V
    .locals 2

    :try_start_0
    const-string v0, "/sdcard/Android/obj/.um"

    .line 1
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private l()V
    .locals 2

    :try_start_0
    const-string v0, "/sdcard/Android/data/.um"

    .line 1
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->b(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->b:Landroid/content/Context;

    const-string v1, "umid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encryptBySHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->l()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return v4

    .line 11
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->k()V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return v4

    .line 15
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->j()V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/j;->c:Ljava/lang/String;

    return v4

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->l()V

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->k()V

    .line 3
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
