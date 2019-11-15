.class public Lcom/sina/weibo/sdk/api/share/g;
.super Ljava/lang/Object;
.source "VersionCheckHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/api/share/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/share/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/sina/weibo/sdk/b$a;Lcom/sina/weibo/sdk/api/a;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/sina/weibo/sdk/api/share/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboMessage WeiboInfo package : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sina/weibo/sdk/api/share/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboMessage WeiboInfo supportApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->b()I

    move-result v0

    const/16 v1, 0x286f

    if-ge v0, v1, :cond_2

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/VoiceObject;

    if-eqz v0, :cond_2

    iput-object v3, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_2
    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->b()I

    move-result v0

    const/16 v1, 0x2870

    if-ge v0, v1, :cond_3

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz v0, :cond_3

    iput-object v3, p3, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/sina/weibo/sdk/b$a;Lcom/sina/weibo/sdk/api/b;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sina/weibo/sdk/api/share/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WeiboMultiMessage WeiboInfo package : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sina/weibo/sdk/api/share/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WeiboMultiMessage WeiboInfo supportApi : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->b()I

    move-result v1

    const/16 v2, 0x286f

    if-lt v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/sina/weibo/sdk/b$a;->b()I

    move-result v0

    const/16 v1, 0x2870

    if-ge v0, v1, :cond_2

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    instance-of v0, v0, Lcom/sina/weibo/sdk/api/CmdObject;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p3, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
