.class public Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;
.super Ljava/lang/Thread;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsoleThread"
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private exitCode:Ljava/lang/Integer;

.field private outputData:Ljava/lang/String;

.field private timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->exitCode:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->outputData:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->command:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->timeout:J

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->setCommand(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->setTimeout(J)V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getExitCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->exitCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->outputData:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    new-instance v2, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-virtual {v2, v4, v5}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;->interrupt()V

    :cond_0
    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;->getOutputData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->setExitCode(Ljava/lang/Integer;)V

    invoke-virtual {p0, v2}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->setOutputData(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7fffffff

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->setExitCode(Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const/high16 v0, -0x80000000

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->setExitCode(Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->command:Ljava/lang/String;

    return-void
.end method

.method public setExitCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->exitCode:Ljava/lang/Integer;

    return-void
.end method

.method public setOutputData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->outputData:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->timeout:J

    return-void
.end method
