.class Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$e;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$e;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$e;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->f(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v0

    const-string v1, "customChannel"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity$e;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
