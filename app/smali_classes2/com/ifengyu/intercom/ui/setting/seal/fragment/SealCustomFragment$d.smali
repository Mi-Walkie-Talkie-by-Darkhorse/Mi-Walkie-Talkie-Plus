.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;
.super Ljava/lang/Object;

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
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/widget/dialog/f;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->b:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->b:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->b(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$d;->c:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->g(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->a(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method
