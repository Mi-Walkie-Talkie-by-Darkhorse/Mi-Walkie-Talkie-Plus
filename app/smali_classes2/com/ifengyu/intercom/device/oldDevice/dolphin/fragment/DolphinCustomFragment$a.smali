.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->t2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    new-instance v1, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    iget-object v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getNo()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;->getFreq()I

    move-result v4

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;-><init>(IILjava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->h2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->g2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->S1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method
