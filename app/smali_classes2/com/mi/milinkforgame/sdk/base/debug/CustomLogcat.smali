.class public Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;
.super Ljava/lang/Object;
.source "CustomLogcat.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/base/debug/TraceLevel;


# static fields
.field private static volatile sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    const/16 v2, 0x10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static getCustomTracer()Lcom/mi/milinkforgame/sdk/base/debug/Tracer;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    const/4 v2, 0x4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static setCustomTracer(Lcom/mi/milinkforgame/sdk/base/debug/Tracer;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/debug/LogcatTracer;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/debug/CustomLogcat;->sCustomTracer:Lcom/mi/milinkforgame/sdk/base/debug/Tracer;

    const/16 v2, 0x8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
