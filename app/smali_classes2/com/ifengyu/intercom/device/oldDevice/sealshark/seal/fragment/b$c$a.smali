.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;->n(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->n2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$c$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->Z1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method
