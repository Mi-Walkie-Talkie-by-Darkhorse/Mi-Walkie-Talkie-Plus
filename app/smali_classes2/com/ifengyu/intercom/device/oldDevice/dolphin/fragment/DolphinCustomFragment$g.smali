.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->s2(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;->b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f()V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$g;->b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->k2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method
