.class Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/RegisterFragment;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->k(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->l(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->k(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->l(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->j(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {v3}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->m(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->b(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->c(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$j;->a:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->d(Lcom/ifengyu/intercom/lite/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
