.class Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/login/RegisterFragment;->R3()V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->k3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->m3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->k3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->m3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->i3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {v3}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->o3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->Q3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->j3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->l3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->n3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/login/RegisterFragment$k;->a:Lcom/ifengyu/intercom/ui/login/RegisterFragment;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/login/RegisterFragment;->p3(Lcom/ifengyu/intercom/ui/login/RegisterFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
