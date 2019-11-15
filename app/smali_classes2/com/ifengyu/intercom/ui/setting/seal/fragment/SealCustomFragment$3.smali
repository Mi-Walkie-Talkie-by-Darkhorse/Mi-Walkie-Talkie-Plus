.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;
.super Ljava/lang/Object;
.source "SealCustomFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "seal_action_modify_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "seal_action_modify_channel_info"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$3;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    const/16 v2, 0xca

    invoke-virtual {v1, v0, v2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
