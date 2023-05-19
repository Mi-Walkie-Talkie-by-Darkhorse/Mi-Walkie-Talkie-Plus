.class Lcom/ifengyu/intercom/ui/login/RegisterFragment$b;
.super Lcom/ifengyu/library/b/e/a;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/login/RegisterFragment;->P3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$b;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    const-string v0, "RegisterFragment"

    const-string v1, "register fail"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$b;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->r3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)V

    return-void
.end method
