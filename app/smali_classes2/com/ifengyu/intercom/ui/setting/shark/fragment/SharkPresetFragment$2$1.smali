.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;
.super Ljava/lang/Object;
.source "SharkPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/SharkPresetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
