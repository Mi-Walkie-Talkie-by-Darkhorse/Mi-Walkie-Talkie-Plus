.class public Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/ifengyu/intercom/update/dolphin/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;,
        Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;,
        Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
    }
.end annotation


# static fields
.field private static volatile l:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/intercom/network/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ifengyu/intercom/network/a;

.field private h:Lcom/ifengyu/intercom/network/b;

.field private i:Z

.field private j:Lcom/ifengyu/intercom/network/d/a;

.field private k:Lcom/ifengyu/intercom/network/d/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Lcom/ifengyu/intercom/network/a;

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Lcom/ifengyu/intercom/network/b;

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->j:Lcom/ifengyu/intercom/network/d/a;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->k:Lcom/ifengyu/intercom/network/d/a;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "."

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://api.ifengyu.com/v2/version"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/?action=version&type="

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&userid="

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&time="

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&sign="

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ifengyu/intercom/i/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lang="

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "en_us"

    goto :goto_0

    :cond_0
    const-string v2, "zh_cn"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mcu"

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->l()I

    move-result p1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_1

    const/high16 v3, 0x1000000

    .line 15
    div-int v3, p1, v3

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x10000

    .line 17
    div-int v4, p1, v3

    rem-int/lit16 v4, v4, 0x100

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    rem-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "&hwVersion="

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "versionHW"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&appVersion="

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&mcuVersion="

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 24
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "post\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateManager"

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 42
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    const p1, 0x7f110330

    .line 44
    invoke-static {p1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 45
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 46
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    if-lt v1, v2, :cond_1

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 50
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :goto_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:I

    return p0
.end method

.method public static d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
    .locals 3

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;-><init>()V

    sput-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/eventbus/a;->a()Lcom/squareup/otto/b;

    move-result-object v1

    sget-object v2, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-virtual {v1, v2}, Lcom/squareup/otto/b;->b(Ljava/lang/Object;)V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->l:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    return-object p0
.end method

.method public static e()I
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->i:Z

    return p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Lcom/ifengyu/intercom/network/a;

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Lcom/ifengyu/intercom/network/b;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V
    .locals 1

    .line 33
    sget-object p3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const-string v0, "source"

    if-ne p4, p3, :cond_1

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p2

    const-string p3, "mounted"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:Ljava/lang/String;

    .line 36
    new-instance p2, Lcom/ifengyu/intercom/network/d/b;

    iget-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/ifengyu/intercom/network/d/b;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f:Ljava/lang/String;

    new-instance p4, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/network/d/b;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    const-string p1, "mitalki.apk"

    invoke-virtual {p2, p3, p1, p4}, Lcom/ifengyu/intercom/network/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_0
    return-void

    .line 38
    :cond_1
    sget-object p3, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne p4, p3, :cond_2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 39
    new-instance p2, Lcom/ifengyu/intercom/network/d/b;

    iget-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/ifengyu/intercom/network/d/b;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object p3

    sget-object p4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e:Ljava/lang/String;

    .line 41
    new-instance p4, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$d;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/network/d/b;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    const-string p1, "mcu_bin.bin"

    invoke-virtual {p2, p3, p1, p4}, Lcom/ifengyu/intercom/network/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/network/a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Lcom/ifengyu/intercom/network/a;

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/network/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Lcom/ifengyu/intercom/network/b;

    :cond_0
    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    new-instance v0, Lcom/ifengyu/intercom/network/d/c;

    const-string v1, "android"

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/network/d/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->j:Lcom/ifengyu/intercom/network/d/a;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/network/d/c;->a(Lcom/ifengyu/intercom/network/d/a;Lcom/ifengyu/intercom/network/d/d;)V

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;I)V
    .locals 2

    .line 29
    iput p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d:I

    .line 30
    iget-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 31
    new-instance p2, Lcom/ifengyu/intercom/network/d/c;

    const-string v0, "mcu"

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/ifengyu/intercom/network/d/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->k:Lcom/ifengyu/intercom/network/d/a;

    invoke-virtual {p2, v0, p1}, Lcom/ifengyu/intercom/network/d/c;->a(Lcom/ifengyu/intercom/network/d/a;Lcom/ifengyu/intercom/network/d/d;)V

    return-void
.end method

.method public addDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g:Lcom/ifengyu/intercom/network/a;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->h:Lcom/ifengyu/intercom/network/b;

    return-void
.end method

.method public removeDownloadListener(Lcom/ifengyu/intercom/network/OnDownloadListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
