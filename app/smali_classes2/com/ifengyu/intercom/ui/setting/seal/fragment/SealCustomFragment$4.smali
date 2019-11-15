.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;
.super Ljava/lang/Object;
.source "SealCustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->h(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/d;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->b:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->b:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$4;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->c(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method
