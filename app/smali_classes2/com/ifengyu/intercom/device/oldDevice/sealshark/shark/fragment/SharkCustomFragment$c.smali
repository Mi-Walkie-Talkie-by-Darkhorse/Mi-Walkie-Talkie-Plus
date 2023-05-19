.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;
.super Ljava/lang/Object;
.source "SharkCustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->q2(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field final synthetic c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->b:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->m2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$c;->c:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->l2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->V1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    return-void
.end method
