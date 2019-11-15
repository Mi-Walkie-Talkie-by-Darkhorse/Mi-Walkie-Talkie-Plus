.class public Lcom/ifengyu/intercom/node/o;
.super Ljava/lang/Thread;
.source "ThreadWrapper.java"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/o;->a:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/o;->a:Z

    return-void
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/o;->a:Z

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
