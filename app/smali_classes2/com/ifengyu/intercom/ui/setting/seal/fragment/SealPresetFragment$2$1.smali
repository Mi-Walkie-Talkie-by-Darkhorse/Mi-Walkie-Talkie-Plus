.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;->a(Lcom/zhy/a/a/a/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$2$1;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method
