.class public abstract Lcom/ifengyu/blelib/b/c;
.super Ljava/lang/Object;
.source "PacketListener.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 5
    iput-wide v0, p0, Lcom/ifengyu/blelib/b/c;->b:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/blelib/b/c;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ifengyu/blelib/b/c;->b:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ifengyu/blelib/b/c;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/blelib/b/c;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/blelib/b/c;->b:J

    return-wide v0
.end method

.method public abstract c(I)V
.end method

.method public abstract d(Lcom/ifengyu/blelib/c/c;)V
.end method
