.class public abstract Lcom/ifengyu/blelib/c/e;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/ifengyu/blelib/c/e;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/blelib/c/e;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ifengyu/blelib/c/e;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ifengyu/blelib/c/e;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/blelib/c/e;->a:J

    return-wide v0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/ifengyu/blelib/d/c;)V
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/blelib/c/e;->b:J

    return-wide v0
.end method
