.class Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$5;
.super Ljava/lang/Object;
.source "SealChannelEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$5;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$5;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    const/16 v1, 0x7d3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "customChannel"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$5;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->f(Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity$5;->a:Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/SealChannelEditActivity;->finish()V

    return-void
.end method
