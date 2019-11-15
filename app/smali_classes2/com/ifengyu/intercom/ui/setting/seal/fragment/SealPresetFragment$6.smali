.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$6;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$6;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealPresetFragment$6;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d()V

    return-void
.end method
