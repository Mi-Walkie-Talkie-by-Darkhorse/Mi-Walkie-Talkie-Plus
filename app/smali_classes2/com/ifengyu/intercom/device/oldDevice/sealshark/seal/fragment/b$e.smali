.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->w2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->h2()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->o2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e$a;-><init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    iget-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->i:Lcom/ifengyu/intercom/i/x0;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->m2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/i/x0;->h1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->q2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Z)Z

    return-void
.end method
