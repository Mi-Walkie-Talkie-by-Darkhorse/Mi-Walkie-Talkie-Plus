.class public Lcom/sina/weibo/sdk/api/c/g;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.sina.weibo.sdk.api.c.g"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lb/b/a/a/b$a;Lcom/sina/weibo/sdk/api/a;)Z
    .locals 2

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Lb/b/a/a/b$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/sina/weibo/sdk/api/c/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeiboMessage WeiboInfo package : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/a/a/b$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/sina/weibo/sdk/api/c/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeiboMessage WeiboInfo supportApi : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/a/a/b$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lb/b/a/a/b$a;->b()I

    move-result p1

    const/16 v0, 0x286f

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 5
    iget-object p1, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz p1, :cond_1

    instance-of p1, p1, Lcom/sina/weibo/sdk/api/VoiceObject;

    if-eqz p1, :cond_1

    .line 6
    iput-object v1, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 7
    :cond_1
    invoke-virtual {p2}, Lb/b/a/a/b$a;->b()I

    move-result p1

    const/16 p2, 0x2870

    if-ge p1, p2, :cond_2

    .line 8
    iget-object p1, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz p1, :cond_2

    instance-of p1, p1, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz p1, :cond_2

    .line 9
    iput-object v1, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/content/Context;Lb/b/a/a/b$a;Lcom/sina/weibo/sdk/api/b;)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Lb/b/a/a/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/api/c/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboMultiMessage WeiboInfo package : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/a/a/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/sina/weibo/sdk/api/c/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboMultiMessage WeiboInfo supportApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lb/b/a/a/b$a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lb/b/a/a/b$a;->b()I

    move-result v0

    const/16 v1, 0x286f

    if-ge v0, v1, :cond_1

    return p1

    .line 14
    :cond_1
    invoke-virtual {p2}, Lb/b/a/a/b$a;->b()I

    move-result p1

    const/16 p2, 0x2870

    if-ge p1, p2, :cond_2

    .line 15
    iget-object p1, p3, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz p1, :cond_2

    instance-of p1, p1, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 16
    iput-object p1, p3, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_2
    const/4 p1, 0x1

    :cond_3
    :goto_0
    return p1
.end method
