.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;
.super Ljava/lang/Object;
.source "SealSharkUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->b(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->f(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->e(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;

    invoke-static {v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;->d(Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/e;->c(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/update/SealSharkUpdateHelper$e;->a(I)V

    return-void
.end method
