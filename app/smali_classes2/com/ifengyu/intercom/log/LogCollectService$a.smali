.class Lcom/ifengyu/intercom/log/LogCollectService$a;
.super Ljava/lang/Thread;
.source "LogCollectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/log/LogCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/log/LogCollectService;

.field private b:Ljava/lang/Process;

.field private c:Ljava/io/BufferedReader;

.field private d:Z

.field private e:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/log/LogCollectService;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Lcom/ifengyu/intercom/log/LogCollectService;

    const-string v0, "LogCollectorThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Z

    iput-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Z

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Lcom/ifengyu/intercom/log/LogCollectService;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/log/LogCollectService;->a(Lcom/ifengyu/intercom/log/LogCollectService;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Lcom/ifengyu/intercom/log/LogCollectService;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/log/LogCollectService;->a(Lcom/ifengyu/intercom/log/LogCollectService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "sh"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-c"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "setprop log.tag.MiTalk VERBOSE"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "sh"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "-c"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "logcat|grep MiTalk"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    const-string v1, "MiTalk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    :try_start_5
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    :try_start_6
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_5
    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/lang/Process;

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    if-eqz v1, :cond_9

    :try_start_7
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_a

    :try_start_8
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_7
    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Ljava/io/FileOutputStream;

    :cond_a
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
