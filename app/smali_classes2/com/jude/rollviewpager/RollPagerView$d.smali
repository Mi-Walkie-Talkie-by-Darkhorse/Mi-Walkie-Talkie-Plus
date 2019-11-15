.class Lcom/jude/rollviewpager/RollPagerView$d;
.super Ljava/util/TimerTask;
.source "RollPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/rollviewpager/RollPagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jude/rollviewpager/RollPagerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jude/rollviewpager/RollPagerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/jude/rollviewpager/RollPagerView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jude/rollviewpager/RollPagerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jude/rollviewpager/RollPagerView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->g(Lcom/jude/rollviewpager/RollPagerView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->h(Lcom/jude/rollviewpager/RollPagerView;)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/jude/rollviewpager/RollPagerView;->i(Lcom/jude/rollviewpager/RollPagerView;)Lcom/jude/rollviewpager/RollPagerView$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jude/rollviewpager/RollPagerView$c;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/jude/rollviewpager/RollPagerView$d;->cancel()Z

    goto :goto_0
.end method
