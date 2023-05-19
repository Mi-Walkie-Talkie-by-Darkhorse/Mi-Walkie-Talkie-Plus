.class final Lcom/huawei/hms/scankit/p/Ka$a;
.super Landroid/os/Handler;
.source "HiAnalyticsThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/Ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/p/Ma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/Ka$a;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Na;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/huawei/hms/scankit/p/Ea;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/Ea;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ea;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/Ka$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/hms/scankit/p/Na;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/huawei/hms/scankit/p/Ma;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Ma;->s(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Ma;->q(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;

    move-result-object p1

    const-string v0, "1.0.2.300"

    .line 6
    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Ma;->r(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static a(Lcom/huawei/hms/scankit/p/Ma;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lcom/huawei/hms/scankit/p/Na;->b()Lcom/huawei/hms/scankit/p/Na;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/hms/scankit/p/Na;->b(Lcom/huawei/hms/scankit/p/Ma;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/Ka$a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0b0005

    const-string v2, "preview"

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Ka$a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v1, 0x7f0b0006

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/p/Ma;

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Ka$a;->a(Lcom/huawei/hms/scankit/p/Ma;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const v1, 0x7f0b0003

    const-string v2, "picture"

    if-ne v0, v1, :cond_3

    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/Ka$a;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/Ma;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    const p1, 0x7f0b0004

    if-ne v0, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/p/Ma;

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Ka$a;->a(Lcom/huawei/hms/scankit/p/Ma;)V

    .line 12
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const p1, 0x7f0b0002

    if-ne v0, p1, :cond_5

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/Ka$a;->a:Z

    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_5
    const-string p1, "CameraManager"

    const-string v0, "HiAnalyticsThread::handleMessage unknown message"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
