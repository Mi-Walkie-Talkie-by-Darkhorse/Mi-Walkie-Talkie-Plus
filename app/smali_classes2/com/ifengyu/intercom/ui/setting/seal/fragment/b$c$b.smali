.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c$b;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c$b;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c$b;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/ui/setting/seal/SealPresetChCssEditActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c$b;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    const-string v1, "seal_action_edit_css_channel_info"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c$b;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$c;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
