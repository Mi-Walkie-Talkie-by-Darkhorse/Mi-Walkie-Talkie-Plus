.class Lcom/ifengyu/intercom/i/v0$c$a;
.super Lcom/ifengyu/blelib/b/c;
.source "LiteBleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/i/v0$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/i/v0$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/i/v0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/v0$c$a;->c:Lcom/ifengyu/intercom/i/v0$c;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0$c$a;->c:Lcom/ifengyu/intercom/i/v0$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/i/v0$c;->c:Lcom/ifengyu/intercom/i/v0;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/v0;->n0(Lcom/ifengyu/intercom/i/v0;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect commend write failed, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/v0$c$a;->c:Lcom/ifengyu/intercom/i/v0$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/i/v0$c;->c:Lcom/ifengyu/intercom/i/v0;

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-static {v0, p1}, Lcom/ifengyu/intercom/i/v0;->o0(Lcom/ifengyu/intercom/i/v0;I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/i/v0$c$a;->c:Lcom/ifengyu/intercom/i/v0$c;

    iget-object p1, p1, Lcom/ifengyu/intercom/i/v0$c;->c:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/w1;->l()Lno/nordicsemi/android/ble/e2;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/q2;->f()V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 0

    return-void
.end method