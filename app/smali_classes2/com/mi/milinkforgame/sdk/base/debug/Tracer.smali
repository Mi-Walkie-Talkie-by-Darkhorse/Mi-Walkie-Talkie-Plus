.class public abstract Lcom/mi/milinkforgame/sdk/base/debug/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# instance fields
.field private volatile mEnabled:Z

.field private mTraceFormat:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

.field private volatile mTraceLevel:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x3f

    const/4 v1, 0x1

    sget-object v2, Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;->DEFAULT:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    invoke-direct {p0, v0, v1, v2}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;-><init>(IZLcom/mi/milinkforgame/sdk/base/debug/TraceFormat;)V

    return-void
.end method

.method public constructor <init>(IZLcom/mi/milinkforgame/sdk/base/debug/TraceFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3f

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mEnabled:Z

    sget-object v0, Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;->DEFAULT:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceFormat:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->setTraceLevel(I)V

    invoke-virtual {p0, p2}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->setEnabled(Z)V

    invoke-virtual {p0, p3}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->setTraceFormat(Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;)V

    return-void
.end method


# virtual methods
.method protected abstract doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected abstract doTrace(Ljava/lang/String;)V
.end method

.method public getTraceFormat()Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceFormat:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    return-object v0
.end method

.method public getTraceLevel()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceLevel:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mEnabled:Z

    return-void
.end method

.method public setTraceFormat(Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceFormat:Lcom/mi/milinkforgame/sdk/base/debug/TraceFormat;

    return-void
.end method

.method public setTraceLevel(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceLevel:I

    return-void
.end method

.method public trace(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceLevel:I

    invoke-static {v0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/Bit;->has(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->doTrace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->mTraceLevel:I

    invoke-static {v0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/Bit;->has(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/mi/milinkforgame/sdk/base/debug/Tracer;->doTrace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
