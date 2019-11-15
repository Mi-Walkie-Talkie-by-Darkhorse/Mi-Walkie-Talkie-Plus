.class public Lcom/sina/weibo/sdk/a/a;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sina/weibo/sdk/a/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sina/weibo/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/sina/weibo/sdk/a/a;
    .locals 4

    const-string v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sina/weibo/sdk/a/a;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sina/weibo/sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appKey"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirectUri"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "scope"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packagename"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_hash"

    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
