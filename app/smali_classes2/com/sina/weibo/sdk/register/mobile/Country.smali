.class public Lcom/sina/weibo/sdk/register/mobile/Country;
.super Ljava/lang/Object;
.source "Country.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sina/weibo/sdk/register/mobile/Country;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/sina/weibo/sdk/register/mobile/Country;)I
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/sina/weibo/sdk/register/mobile/Country;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/sina/weibo/sdk/register/mobile/Country;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->c:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->d:[Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sina/weibo/sdk/register/mobile/a;->a()Lcom/sina/weibo/sdk/register/mobile/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/Country;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sina/weibo/sdk/register/mobile/Country;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/Country;->a(Lcom/sina/weibo/sdk/register/mobile/Country;)I

    move-result v0

    return v0
.end method
