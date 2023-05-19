.class public Lcom/ifengyu/intercom/f;
.super Ljava/lang/Object;
.source "AppData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/ifengyu/intercom/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/f$a;->a()Lcom/ifengyu/intercom/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 4

    const-string v0, "app_config_preferences"

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v0

    const-string v1, "key_poc_host"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ifengyu/library/utils/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_audio_host"

    .line 3
    invoke-virtual {v0, v2}, Lcom/ifengyu/library/utils/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iput-object v1, p0, Lcom/ifengyu/intercom/f;->a:Ljava/lang/String;

    .line 6
    iput-object v2, p0, Lcom/ifengyu/intercom/f;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "https://api-mipoc.ifengyu.com:8088"

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/f;->a:Ljava/lang/String;

    const-string v1, "redirector.ifengyu.com:9099"

    .line 8
    iput-object v1, p0, Lcom/ifengyu/intercom/f;->b:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    const-string v2, "key_is_support_m303"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/library/utils/p;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/f;->c:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/f;->c:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app_config_preferences"

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v0

    const-string v1, "key_audio_host"

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/library/utils/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app_config_preferences"

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v0

    const-string v1, "key_poc_host"

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/library/utils/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    const-string v0, "app_config_preferences"

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v0

    const-string v1, "key_is_support_m303"

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/library/utils/p;->h(Ljava/lang/String;Z)V

    return-void
.end method
