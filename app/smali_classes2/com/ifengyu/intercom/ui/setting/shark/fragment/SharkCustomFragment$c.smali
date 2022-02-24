.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;
.super Ljava/lang/Object;
.source "SharkCustomFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "seal_action_modify_channel"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    const-string v0, "seal_action_modify_channel_info"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    const/16 v0, 0xca

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment$c;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :goto_0
    return-void
.end method
