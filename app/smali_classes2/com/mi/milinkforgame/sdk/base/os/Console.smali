.class public Lcom/mi/milinkforgame/sdk/base/os/Console;
.super Ljava/lang/Thread;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;,
        Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleReader;
    }
.end annotation


# static fields
.field private static final CONSOLE_STREAM_READER_TIMEOUT:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, p2, v0, v1}, Lcom/mi/milinkforgame/sdk/base/os/Console;->execute(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;

    invoke-direct {v0, p0, p3, p4}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->start()V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->interrupt()V

    :cond_0
    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/Console$ConsoleThread;->getOutputData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
