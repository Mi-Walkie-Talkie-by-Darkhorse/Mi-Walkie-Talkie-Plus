.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;
.super Ljava/lang/Object;
.source "DolphinPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;->a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method
