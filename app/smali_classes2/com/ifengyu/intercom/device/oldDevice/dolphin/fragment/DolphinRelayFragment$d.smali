.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;
.super Ljava/lang/Object;
.source "DolphinRelayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->l2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->h2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment$d;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;->g2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinRelayFragment;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->Q1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method