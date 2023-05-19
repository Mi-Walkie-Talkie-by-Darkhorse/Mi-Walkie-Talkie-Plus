.class Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$b;
.super Lcom/ifengyu/library/b/e/a;
.source "DevicesPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->F0(Lcom/ifengyu/intercom/models/DeviceModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$b;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->v()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unbindMi3GwDevice fail"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$b;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->w(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;)Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/a;->u()V

    return-void
.end method
