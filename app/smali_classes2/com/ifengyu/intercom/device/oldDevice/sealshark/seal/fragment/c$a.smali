.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;
.super Ljava/lang/Object;
.source "SealProtocolFragment.java"

# interfaces
.implements Lcom/ifengyu/library/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;->u3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;

    const v0, 0x7f11034e

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;->C3(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;->z3(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;->A3(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->start(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;->B3(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/c;)V

    return-void
.end method
