.class Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;
.super Lcom/ifengyu/library/b/e/a;
.source "DevicesPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->x0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;->b:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    iput p2, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;->a:I

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBindDeviceList fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;->b:Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;

    iget v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r$a;->a:I

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/r;->v0(I)V

    return-void
.end method
