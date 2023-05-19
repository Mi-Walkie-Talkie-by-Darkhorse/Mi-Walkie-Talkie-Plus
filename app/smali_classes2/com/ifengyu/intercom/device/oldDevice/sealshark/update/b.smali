.class abstract Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;
.super Ljava/lang/Object;
.source "AbsUpdateTransport.java"

# interfaces
.implements Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/app/AlarmManager;

.field private c:Ljava/lang/String;

.field protected d:I

.field e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->f:Landroid/util/SparseArray;

    .line 3
    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->b:Landroid/app/AlarmManager;

    .line 5
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->a:Landroid/content/Context;

    .line 6
    iput-object p4, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->c:Ljava/lang/String;

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->j()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private j()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private n(J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->j()Landroid/app/PendingIntent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->b:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr p1, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public c(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public e(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {p2, p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReceivedAck: offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->d:I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->f:Landroid/util/SparseArray;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public g(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->f:Landroid/util/SparseArray;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->d:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    invoke-interface {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->f:Landroid/util/SparseArray;

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->d:I

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method m(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->i()V

    int-to-long v0, p1

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->n(J)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->e:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/c;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/b;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
