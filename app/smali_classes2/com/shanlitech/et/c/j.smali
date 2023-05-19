.class public Lcom/shanlitech/et/c/j;
.super Ljava/lang/Object;
.source "PowerUtils.java"


# instance fields
.field private a:Landroid/os/PowerManager;

.field private b:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v0, p0, Lcom/shanlitech/et/c/j;->a:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/shanlitech/et/c/j;->a:Landroid/os/PowerManager;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/c/j;->a:Landroid/os/PowerManager;

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/c/j;->b:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;)Lcom/shanlitech/et/c/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/shanlitech/et/c/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/shanlitech/et/c/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/shanlitech/et/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/c/j;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/c/j;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-object p0
.end method

.method public final b(J)Lcom/shanlitech/et/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/c/j;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-object p0
.end method

.method public final d()Lcom/shanlitech/et/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/c/j;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/c/j;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-object p0
.end method
