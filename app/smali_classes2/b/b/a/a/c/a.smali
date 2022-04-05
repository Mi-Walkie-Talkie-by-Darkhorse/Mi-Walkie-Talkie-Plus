.class public Lb/b/a/a/c/a;
.super Ljava/lang/Object;


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

    iput-object v0, p0, Lb/b/a/a/c/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/b/a/a/c/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lb/b/a/a/c/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/b/a/a/c/a;->e:Ljava/lang/String;

    iput-object p2, p0, Lb/b/a/a/c/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lb/b/a/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lb/b/a/a/c/a;->d:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lb/b/a/a/c/a;
    .locals 3

    const-string v0, "appKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lb/b/a/a/c/a;

    invoke-direct {v2, p0, v0, v1, p1}, Lb/b/a/a/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/b/a/a/c/a;->a:Ljava/lang/String;

    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    const-string v2, "redirectUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/c/a;->c:Ljava/lang/String;

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/c/a;->d:Ljava/lang/String;

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/c/a;->e:Ljava/lang/String;

    const-string v2, "key_hash"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    return-object v0
.end method
