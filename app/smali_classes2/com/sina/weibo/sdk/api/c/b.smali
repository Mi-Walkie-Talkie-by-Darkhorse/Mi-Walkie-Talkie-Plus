.class public abstract Lcom/sina/weibo/sdk/api/c/b;
.super Lcom/sina/weibo/sdk/api/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/c/a;->a()I

    move-result v0

    const-string v1, "_weibo_command_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/c/a;->a:Ljava/lang/String;

    const-string v1, "_weibo_transaction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method abstract a(Landroid/content/Context;Lb/b/a/a/b$a;Lcom/sina/weibo/sdk/api/c/g;)Z
.end method
