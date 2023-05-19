.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;
.super Ljava/lang/Object;
.source "SealSharkUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->A(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->a:Z

    iput p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;->onSuccess()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$c;->b:I

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;->onError(I)V

    :cond_1
    :goto_0
    return-void
.end method
