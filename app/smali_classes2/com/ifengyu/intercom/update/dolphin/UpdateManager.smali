.class public Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/dolphin/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;,
        Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;,
        Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ifengyu/intercom/network/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/ifengyu/intercom/network/a;

.field private j:Lcom/ifengyu/intercom/network/b;

.field private k:Z

.field private l:Lcom/ifengyu/intercom/network/a/a;

.field private m:Lcom/ifengyu/intercom/network/a/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:I

    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i:Lcom/ifengyu/intercom/network/a;

    iput-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->j:Lcom/ifengyu/intercom/network/b;

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$1;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/network/a/a;

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$2;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->m:Lcom/ifengyu/intercom/network/a/a;

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-virtual {v0, v2}, Lcom/squareup/otto/b;->a(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/v2/version"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/?action=version&type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&userid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&sign="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&lang="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "en_us"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mcu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->l()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_0

    const/high16 v3, 0x1000000

    div-int v3, v0, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x10000

    div-int v3, v0, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x10000

    rem-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "&hwVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "versionHW"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&appVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&mcuVersion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "UpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "zh_cn"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f09020d

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->k:Z

    return p1
.end method

.method public static b()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:I

    return v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i:Lcom/ifengyu/intercom/network/a;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->j:Lcom/ifengyu/intercom/network/b;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V
    .locals 5

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Ljava/lang/String;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p4, v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mitalki"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Ljava/lang/String;

    new-instance v1, Lcom/ifengyu/intercom/network/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    const-string v2, "source"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/network/a/b;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Ljava/lang/String;

    const-string v2, "mitalki.apk"

    new-instance v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;

    sget-object v4, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v3, p0, p1, v1, v4}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/network/a/b;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/network/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p4, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    new-instance v1, Lcom/ifengyu/intercom/network/a/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:Ljava/util/HashMap;

    const-string v2, "source"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/network/a/b;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Ljava/lang/String;

    const-string v2, "mcu_bin.bin"

    new-instance v3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;

    sget-object v4, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {v3, p0, p1, v1, v4}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/network/a/b;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/ifengyu/intercom/network/a/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/network/a;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i:Lcom/ifengyu/intercom/network/a;

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/network/b;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->j:Lcom/ifengyu/intercom/network/b;

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/network/a/c;

    const-string v1, "android"

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/network/a/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/network/a/a;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/network/a/c;->a(Lcom/ifengyu/intercom/network/a/a;Lcom/ifengyu/intercom/network/a/d;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;I)V
    .locals 3

    iput p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Lcom/ifengyu/intercom/network/a/c;

    const-string v1, "mcu"

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/network/a/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->m:Lcom/ifengyu/intercom/network/a/a;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/network/a/c;->a(Lcom/ifengyu/intercom/network/a/a;Lcom/ifengyu/intercom/network/a/d;)V

    return-void
.end method

.method public addDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i:Lcom/ifengyu/intercom/network/a;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->j:Lcom/ifengyu/intercom/network/b;

    return-void
.end method

.method public e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
