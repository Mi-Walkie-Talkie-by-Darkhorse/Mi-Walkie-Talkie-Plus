.class public Lcom/liulishuo/filedownloader/e/e;
.super Ljava/lang/Object;
.source "FileDownloadProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/e/e$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method private constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please invoke the \'FileDownloader#setup\' before using FileDownloader. If you want to register some components on FileDownloader please invoke the \'FileDownloader#setupOnApplicationOnCreate\' on the \'Application#onCreate\' first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/liulishuo/filedownloader/e/c;->a()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "filedownloader.properties"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v12, "http.lenient"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "process.non-separate"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "download.min-progress-step"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "download.min-progress-time"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "download.max-network-thread-count"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "file.non-pre-allocation"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v12, "broadcast.completed"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "download.trial-connection-head-method"

    invoke-virtual {v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-eqz v8, :cond_6

    const-string v1, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "false"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "http.lenient"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    instance-of v12, v0, Ljava/io/FileNotFoundException;

    if-eqz v12, :cond_3

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_2

    const-class v0, Lcom/liulishuo/filedownloader/e/e;

    const-string v12, "not found filedownloader.properties"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0, v12, v13}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_13

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v9

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v9

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    const-string v1, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->c:Z

    :goto_4
    if-eqz v7, :cond_8

    const-string v1, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "false"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "process.non-separate"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->c:Z

    goto :goto_4

    :cond_7
    const-string v1, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    :goto_5
    if-eqz v6, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x0

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->a:I

    :goto_6
    if-eqz v5, :cond_a

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/liulishuo/filedownloader/e/e;->b:J

    :goto_7
    if-eqz v4, :cond_b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/liulishuo/filedownloader/e/e;->a(I)I

    move-result v1

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->e:I

    :goto_8
    if-eqz v3, :cond_d

    const-string v1, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "file.non-pre-allocation"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    goto :goto_5

    :cond_9
    const/high16 v1, 0x10000

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->a:I

    goto :goto_6

    :cond_a
    const-wide/16 v6, 0x7d0

    iput-wide v6, p0, Lcom/liulishuo/filedownloader/e/e;->b:J

    goto :goto_7

    :cond_b
    const/4 v1, 0x3

    iput v1, p0, Lcom/liulishuo/filedownloader/e/e;->e:I

    goto :goto_8

    :cond_c
    const-string v1, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    :goto_9
    if-eqz v2, :cond_f

    const-string v1, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "broadcast.completed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    goto :goto_9

    :cond_e
    const-string v1, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->g:Z

    :goto_a
    if-eqz v0, :cond_12

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the value of \'%s\' must be \'%s\' or \'%s\'"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "download.trial-connection-head-method"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "true"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "false"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/e/e;->g:Z

    goto :goto_a

    :cond_10
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/e/e;->h:Z

    :goto_b
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_11

    const-class v0, Lcom/liulishuo/filedownloader/e/e;

    const-string v1, "init properties %d\n load properties: %s=%B; %s=%B; %s=%d; %s=%d; %s=%d; %s=%B; %s=%B; %s=%B"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "http.lenient"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->c:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "process.non-separate"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "download.min-progress-step"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/liulishuo/filedownloader/e/e;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "download.min-progress-time"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/e/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "download.max-network-thread-count"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget v4, p0, Lcom/liulishuo/filedownloader/e/e;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "file.non-pre-allocation"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "broadcast.completed"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "download.trial-connection-head-method"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    iget-boolean v4, p0, Lcom/liulishuo/filedownloader/e/e;->h:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/e/e;->h:Z

    goto/16 :goto_b

    :cond_13
    move-object v0, v9

    goto/16 :goto_1

    :cond_14
    move-object v0, v9

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/liulishuo/filedownloader/e/e$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/e/e;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    if-le p0, v0, :cond_1

    const-class v2, Lcom/liulishuo/filedownloader/e/e;

    const-string v3, "require the count of network thread  is %d, what is more than the max valid count(%d), so adjust to %d auto"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-ge p0, v1, :cond_0

    const-class v0, Lcom/liulishuo/filedownloader/e/e;

    const-string v2, "require the count of network thread  is %d, what is less than the min valid count(%d), so adjust to %d auto"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p0, v1

    goto :goto_0
.end method

.method public static a()Lcom/liulishuo/filedownloader/e/e;
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e$a;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    return-object v0
.end method
