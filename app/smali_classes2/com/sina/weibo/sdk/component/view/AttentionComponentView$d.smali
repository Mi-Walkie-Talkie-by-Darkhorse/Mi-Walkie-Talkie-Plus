.class public Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lb/b/a/a/c/b;


# direct methods
.method private a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;)Lb/b/a/a/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$d;->e:Lb/b/a/a/c/b;

    return-object p0
.end method
