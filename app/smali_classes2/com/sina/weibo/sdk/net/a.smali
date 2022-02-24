.class public Lcom/sina/weibo/sdk/net/a;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/a$a;,
        Lcom/sina/weibo/sdk/net/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sina/weibo/sdk/net/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;Ljava/lang/String;Lcom/sina/weibo/sdk/net/d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/net/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/net/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/b/a/a/d/g;->b(Landroid/content/Context;Ljava/lang/String;)Lb/b/a/a/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/d/g;->a()V

    .line 2
    new-instance v0, Lcom/sina/weibo/sdk/net/a$b;

    iget-object v2, p0, Lcom/sina/weibo/sdk/net/a;->a:Landroid/content/Context;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sina/weibo/sdk/net/a$b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;Ljava/lang/String;Lcom/sina/weibo/sdk/net/d;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
