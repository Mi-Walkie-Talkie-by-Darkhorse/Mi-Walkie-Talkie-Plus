.class Lcom/ifengyu/intercom/ui/talk/x2$c;
.super Lcom/ifengyu/library/b/e/a;
.source "CreateCodeToCreateGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/talk/x2;->z3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/talk/x2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/talk/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/x2$c;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/x2$c;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/x2;->x3(Lcom/ifengyu/intercom/ui/talk/x2;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/x2$c;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/talk/x2;->v3(Lcom/ifengyu/intercom/ui/talk/x2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCreateGroupCode fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/x2$c;->a:Lcom/ifengyu/intercom/ui/talk/x2;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/l;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/l;-><init>(Lcom/ifengyu/intercom/ui/talk/x2$c;)V

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/talk/x2;->w3(Lcom/ifengyu/intercom/ui/talk/x2;Ljava/lang/String;Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$a;)V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/x2$c;->c()V

    return-void
.end method
