.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->d()V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    new-instance v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5$1;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/aa;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Z)Z

    return-void
.end method
