.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3$2;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;->a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3$2;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3$2;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3$2;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_edit_css_channel_info"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3$2;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3$2;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method
