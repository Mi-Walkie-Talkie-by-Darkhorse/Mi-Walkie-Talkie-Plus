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
.field private a:Ljava/lang/Process;

.field private b:Ljava/io/BufferedReader;

.field private c:Z

.field private d:Ljava/io/FileOutputStream;

.field final synthetic e:Lcom/ifengyu/intercom/log/LogCollectService;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/log/LogCollectService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Lcom/ifengyu/intercom/log/LogCollectService;

    const-string p1, "LogCollectorThread"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Z

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Z

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "-c"

    const-string v1, "sh"

    .line 1
    iget-object v2, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Lcom/ifengyu/intercom/log/LogCollectService;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/log/LogCollectService;->a(Lcom/ifengyu/intercom/log/LogCollectService;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->e:Lcom/ifengyu/intercom/log/LogCollectService;

    invoke-static {v3, v2}, Lcom/ifengyu/intercom/log/LogCollectService;->a(Lcom/ifengyu/intercom/log/LogCollectService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "setprop log.tag.MiTalk VERBOSE"

    .line 6
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "logcat|grep MiTalk"

    .line 11
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    .line 13
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v0, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;

    .line 14
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    .line 15
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    iget-boolean v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->c:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    const-string v1, "MiTalk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 22
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;

    if-eqz v0, :cond_5

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 25
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_8

    .line 28
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 29
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 32
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    .line 34
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 35
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_8

    .line 38
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 39
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    :goto_5
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    :cond_8
    return-void

    .line 41
    :goto_6
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    if-eqz v1, :cond_9

    .line 42
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 43
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->a:Ljava/lang/Process;

    .line 44
    :cond_9
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;

    if-eqz v1, :cond_a

    .line 45
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 46
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->b:Ljava/io/BufferedReader;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    :cond_a
    :goto_7
    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_b

    .line 49
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    :goto_8
    iput-object v3, p0, Lcom/ifengyu/intercom/log/LogCollectService$a;->d:Ljava/io/FileOutputStream;

    .line 52
    :cond_b
    throw v0
.end method
