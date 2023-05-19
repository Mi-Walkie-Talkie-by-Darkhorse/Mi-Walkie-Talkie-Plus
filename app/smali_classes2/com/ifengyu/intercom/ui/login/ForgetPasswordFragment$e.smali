.class Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->N3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->k3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->m3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->k3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->m3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->i3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->o3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->M3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->j3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->l3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->n3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment$e;->a:Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;->p3(Lcom/ifengyu/intercom/ui/login/ForgetPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
