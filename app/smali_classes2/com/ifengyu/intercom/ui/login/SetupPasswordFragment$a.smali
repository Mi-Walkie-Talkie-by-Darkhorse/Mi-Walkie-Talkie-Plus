.class Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment$a;
.super Lcom/ifengyu/library/b/e/a;
.source "SetupPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment$a;->a:Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment$a;->a:Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;->g3(Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "modifyPwd fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result v0

    const/16 v1, 0x2756

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment$a;->a:Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;

    const v0, 0x7f11023d

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;->h3(Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment$a;->a:Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;

    invoke-virtual {p1}, Lcom/ifengyu/library/http/exception/NewApiException;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/b/f/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;->i3(Lcom/ifengyu/intercom/ui/login/SetupPasswordFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
