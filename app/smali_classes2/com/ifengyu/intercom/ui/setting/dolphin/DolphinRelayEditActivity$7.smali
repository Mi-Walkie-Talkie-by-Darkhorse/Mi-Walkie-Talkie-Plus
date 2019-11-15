.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;
.super Ljava/lang/Object;
.source "DolphinRelayEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    const/4 v1, 0x2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "relayInfo"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-static {v4}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->finish()V

    return-void
.end method
