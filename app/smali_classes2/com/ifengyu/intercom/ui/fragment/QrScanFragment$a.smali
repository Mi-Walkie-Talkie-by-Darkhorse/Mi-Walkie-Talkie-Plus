.class Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;
.super Lcom/ifengyu/library/b/e/a;
.source "QrScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->n3(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->m3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    return-void
.end method

.method private synthetic e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->l3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->k3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->g3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindMi3GwDevice fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result v0

    const/16 v1, 0x2760

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    const v0, 0x7f110069

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/n0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/n0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;)V

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->h3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    const/16 v0, 0x2756

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    const v0, 0x7f11006a

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/p0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/p0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;)V

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->i3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    const v0, 0x7f11011d

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/fragment/o0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/fragment/o0;-><init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;)V

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->j3(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    :goto_0
    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->c()V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->e()V

    return-void
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment$a;->g()V

    return-void
.end method
