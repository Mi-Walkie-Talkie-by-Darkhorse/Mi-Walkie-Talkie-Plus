.class Lcom/sina/weibo/sdk/b/b;
.super Ljava/lang/Object;
.source "AppInstallCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Looper;

.field private f:Lcom/sina/weibo/sdk/b/b$a;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/b/b;->a:Ljava/lang/String;

    const-class v0, Lcom/sina/weibo/sdk/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/b;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->e:Landroid/os/Looper;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/b/a;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sina/weibo/sdk/b/a;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    move v3, v1

    move v2, v1

    :goto_1
    if-lt v3, v5, :cond_2

    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b/a;->b()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    :cond_3
    iget v7, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v7, v2, :cond_4

    iget v0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sina/weibo/sdk/utils/g$a;->a()Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->c(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/b/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/b/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->b(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/b;Lcom/sina/weibo/sdk/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/b/b;->b(Lcom/sina/weibo/sdk/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/b/b;->g:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v3, "com.sina.weibo"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/sina/weibo/sdk/b;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b;->a()Lcom/sina/weibo/sdk/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-static {p0, p2}, Lcom/sina/weibo/sdk/b/b;->b(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/sina/weibo/sdk/b/a;)V
    .locals 8

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sina/weibo/sdk/b/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/b/a;->a()J

    move-result-wide v4

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/b/a;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v3, ""

    :try_start_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    const-string v4, "GET"

    new-instance v5, Lcom/sina/weibo/sdk/net/f;

    const-string v6, ""

    invoke-direct {v5, v6}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v4, v5}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    sget-object v0, Lcom/sina/weibo/sdk/b/b;->b:Ljava/lang/String;

    const-string v1, "redirectDownloadUrl is illeagle"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v4, v0, v1, v2}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v0, p1, v3}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lcom/sina/weibo/sdk/b/b;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/a;Ljava/lang/String;)V

    :cond_5
    throw v0
.end method

.method private static b(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, ""

    move v1, v2

    :goto_1
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lt v1, v3, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/d;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Weibo"

    const-string v1, "\u5fae\u535a"

    const-string v2, "\u5fae\u535a"

    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/b/b;->g:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/b;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/b;->e:Landroid/os/Looper;

    new-instance v0, Lcom/sina/weibo/sdk/b/b$a;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->e:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/b/b$a;-><init>(Lcom/sina/weibo/sdk/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    goto :goto_0
.end method

.method public a(Lcom/sina/weibo/sdk/b/a;)Z
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no thread running. please call start method first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/b/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/b/b;->b:Ljava/lang/String;

    const-string v1, "no thread running. please call start method first!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b;->f:Lcom/sina/weibo/sdk/b/b$a;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/b/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
