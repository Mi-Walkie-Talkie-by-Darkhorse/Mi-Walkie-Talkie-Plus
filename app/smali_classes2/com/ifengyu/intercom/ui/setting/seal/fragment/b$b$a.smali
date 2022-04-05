.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$b$a;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    return-void
.end method
