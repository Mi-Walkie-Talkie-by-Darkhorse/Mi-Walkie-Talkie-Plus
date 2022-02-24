.class public Lb/b/a/a/c/a;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lb/b/a/a/c/a;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lb/b/a/a/c/a;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lb/b/a/a/c/a;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lb/b/a/a/c/a;->e:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lb/b/a/a/c/a;->a:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lb/b/a/a/c/a;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lb/b/a/a/c/a;->d:Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/sina/weibo/sdk/utils/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lb/b/a/a/c/a;
    .locals 3

    const-string v0, "appKey"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirectUri"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance v2, Lb/b/a/a/c/a;

    invoke-direct {v2, p0, v0, v1, p1}, Lb/b/a/a/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lb/b/a/a/c/a;->a:Ljava/lang/String;

    const-string v2, "appKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    const-string v2, "redirectUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lb/b/a/a/c/a;->c:Ljava/lang/String;

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lb/b/a/a/c/a;->d:Ljava/lang/String;

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lb/b/a/a/c/a;->e:Ljava/lang/String;

    const-string v2, "key_hash"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/a/c/a;->b:Ljava/lang/String;

    return-object v0
.end method
