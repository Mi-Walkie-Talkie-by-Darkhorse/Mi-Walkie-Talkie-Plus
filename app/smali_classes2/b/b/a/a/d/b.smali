.class Lb/b/a/a/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/a/d/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lb/b/a/a/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Looper;

.field private d:Lb/b/a/a/d/b$a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/org_share_data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/b/a/a/d/b;->f:Ljava/lang/String;

    const-class v0, Lb/b/a/a/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/b/a/a/d/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/a/d/b;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lb/b/a/a/d/b;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/d/b;->c:Landroid/os/Looper;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lb/b/a/a/d/a;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lb/b/a/a/d/a;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v2, v0, :cond_3

    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-virtual {p2}, Lb/b/a/a/d/a;->d()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2}, Lb/b/a/a/d/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lb/b/a/a/d/b;->a(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v5, v3, :cond_5

    move-object v1, v4

    move v3, v5

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lb/b/a/a/d/a;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sina/weibo/sdk/utils/g$a;->a()Lcom/sina/weibo/sdk/utils/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/a/a/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/utils/g$a;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    invoke-static {p0, p2}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/app/PendingIntent;)Lcom/sina/weibo/sdk/utils/g$a;

    invoke-virtual {p1}, Lb/b/a/a/d/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lb/b/a/a/d/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/utils/g$a;->b(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    invoke-virtual {p1}, Lb/b/a/a/d/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/utils/g$a;->c(Ljava/lang/String;)Lcom/sina/weibo/sdk/utils/g$a;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/utils/g$a;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/utils/g;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/utils/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lb/b/a/a/d/b;Lb/b/a/a/d/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/d/b;->b(Lb/b/a/a/d/a;)V

    return-void
.end method

.method static synthetic a(Lb/b/a/a/d/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/d/b;->e:Z

    return-void
.end method

.method private static a(Landroid/content/Context;Lb/b/a/a/d/a;)Z
    .locals 3

    invoke-virtual {p1}, Lb/b/a/a/d/a;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lb/b/a/a/d/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lb/b/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lb/b/a/a/d/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.sina.weibo"

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lb/b/a/a/b;->a(Landroid/content/Context;)Lb/b/a/a/b;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/a/a/b;->a()Lb/b/a/a/b$a;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb/b/a/a/b$a;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lb/b/a/a/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    :goto_0
    return v1
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xb

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    if-lt v2, v4, :cond_4

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/d;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lb/b/a/a/d/b;->b(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p2}, Lb/b/a/a/d/b;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private b(Lb/b/a/a/d/a;)V
    .locals 9

    const-string v0, ""

    iget-object v1, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Lb/b/a/a/d/a;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lb/b/a/a/d/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lb/b/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb/b/a/a/d/a;->f()J

    move-result-wide v3

    iget-object v5, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v5, v1, p1}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Ljava/lang/String;Lb/b/a/a/d/a;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v6, v3

    if-ltz v8, :cond_1

    iget-object v0, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Lb/b/a/a/d/a;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/e;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_0
    iget-object v3, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    const-string v4, "GET"

    new-instance v5, Lcom/sina/weibo/sdk/net/f;

    invoke-direct {v5, v0}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v4, v5}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/b/a/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v4, v2, v1, v3}, Lcom/sina/weibo/sdk/net/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    sget-object v1, Lb/b/a/a/d/b;->g:Ljava/lang/String;

    const-string v2, "redirectDownloadUrl is illeagle"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Lb/b/a/a/d/a;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    iget-object v1, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Lb/b/a/a/d/a;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lb/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lb/b/a/a/d/b;->a(Landroid/content/Context;Lb/b/a/a/d/a;Ljava/lang/String;)V

    :cond_5
    throw v1

    :cond_6
    :goto_3
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0

    :catch_0
    return v1
.end method

.method private static b(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5fae\u535a"

    const-string v0, "Weibo"

    invoke-static {p0, v0, p1, p1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lb/b/a/a/d/b;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/a/d/b;->e:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/b/a/a/d/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lb/b/a/a/d/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/d/b;->c:Landroid/os/Looper;

    new-instance v0, Lb/b/a/a/d/b$a;

    iget-object v1, p0, Lb/b/a/a/d/b;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lb/b/a/a/d/b$a;-><init>(Lb/b/a/a/d/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lb/b/a/a/d/b;->d:Lb/b/a/a/d/b$a;

    return-void
.end method

.method public a(Lb/b/a/a/d/a;)Z
    .locals 2

    iget-object v0, p0, Lb/b/a/a/d/b;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/d/b;->d:Lb/b/a/a/d/b$a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lb/b/a/a/d/b;->d:Lb/b/a/a/d/b$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no thread running. please call start method first!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/d/b;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/d/b;->d:Lb/b/a/a/d/b$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lb/b/a/a/d/b;->d:Lb/b/a/a/d/b$a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lb/b/a/a/d/b;->g:Ljava/lang/String;

    const-string v1, "no thread running. please call start method first!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
