.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;
.super Lcom/ifengyu/library/b/e/a;
.source "SealBtEarGuide1Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->n()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;->F(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->v(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->v(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity;

    const v0, 0x7f080187

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->t(I)V

    .line 5
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/ifengyu/library/utils/s;->s(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/activity/SealBtEarGuide1Activity$c;->c()V

    return-void
.end method
