.class Lcom/ifengyu/intercom/ui/talk/c3/e0$a;
.super Lcom/ifengyu/library/b/e/a;
.source "GroupDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/c3/e0;->R(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/e0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0$a;->a:Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadGroupAvatarFile fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/e0$a;->a:Lcom/ifengyu/intercom/ui/talk/c3/e0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/talk/c3/e0;->w(Lcom/ifengyu/intercom/ui/talk/c3/e0;)Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/c;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/c;->g()V

    return-void
.end method
