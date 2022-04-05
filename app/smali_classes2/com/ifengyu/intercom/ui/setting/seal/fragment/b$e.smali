.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->a:Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/a;->m()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->d(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    new-instance p1, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e$a;-><init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->c(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/g0;->f(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b$e;->b:Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;->a(Lcom/ifengyu/intercom/ui/setting/seal/fragment/b;Z)Z

    return-void
.end method
