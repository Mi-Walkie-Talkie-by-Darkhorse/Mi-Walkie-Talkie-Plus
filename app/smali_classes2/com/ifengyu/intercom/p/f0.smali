.class public abstract Lcom/ifengyu/intercom/p/f0;
.super Ljava/lang/Object;
.source "OnMultipleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:J

.field private final b:I

.field private c:[J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ifengyu/intercom/p/f0;->a:J

    .line 3
    iput p3, p0, Lcom/ifengyu/intercom/p/f0;->b:I

    .line 4
    new-array p1, p3, [J

    iput-object p1, p0, Lcom/ifengyu/intercom/p/f0;->c:[J

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/p/f0;->c:[J

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/p/f0;->c:[J

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/p/f0;->c:[J

    aget-wide v1, v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ifengyu/intercom/p/f0;->a:J

    sub-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/ifengyu/intercom/p/f0;->b:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/ifengyu/intercom/p/f0;->c:[J

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/p/f0;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
