.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->r(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->h2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->V1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method
