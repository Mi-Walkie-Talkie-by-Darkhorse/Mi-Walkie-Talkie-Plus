.class Lcom/xiaomi/push/service/module/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/module/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/module/d$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/service/module/d$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/module/d$a;->f:Z

    iput-object p2, p0, Lcom/xiaomi/push/service/module/d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/module/d$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/module/d$a;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/xiaomi/push/service/module/d$a;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/module/d$a;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/module/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/service/module/d$a;->f:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/push/service/module/d$a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/network/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/xiaomi/push/service/module/d$a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/a;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/module/d$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/d;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/module/d$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_0

    const-string v2, "download apk success."

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/push/service/module/d$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".tmp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/xiaomi/push/service/module/d$a;->e:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/channel/commonutils/android/b;->e(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/d;->a([Landroid/content/pm/Signature;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "verify signature success"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaomi/push/service/module/d$a;->c:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/push/service/module/d$a;->f:Z

    iget-boolean v2, p0, Lcom/xiaomi/push/service/module/d$a;->d:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/push/service/module/d$a;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/android/b;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_5
    const-string v2, "verify signature failed"

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    :try_start_6
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/file/a;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
