.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->e(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    const-string v1, "relayInfo"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity$g;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
