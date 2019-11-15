.class public abstract Lcom/ifengyu/intercom/b/y;
.super Ljava/lang/Object;
.source "PerfectClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ifengyu/intercom/b/y;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/b/y;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget v3, p0, Lcom/ifengyu/intercom/b/y;->b:I

    if-eq v3, v2, :cond_1

    iput v2, p0, Lcom/ifengyu/intercom/b/y;->b:I

    iput-wide v0, p0, Lcom/ifengyu/intercom/b/y;->a:J

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/b/y;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/ifengyu/intercom/b/y;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/ifengyu/intercom/b/y;->a:J

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/b/y;->a(Landroid/view/View;)V

    goto :goto_0
.end method
