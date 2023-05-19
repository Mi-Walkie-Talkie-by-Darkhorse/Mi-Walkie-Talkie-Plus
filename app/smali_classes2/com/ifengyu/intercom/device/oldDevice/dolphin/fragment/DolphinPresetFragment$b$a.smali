.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;
.super Ljava/lang/Object;
.source "DolphinPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;->n(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;->g2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;->b:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinPresetFragment$b$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/b;->V1(Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    return-void
.end method
