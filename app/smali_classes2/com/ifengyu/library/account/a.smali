.class public Lcom/ifengyu/library/account/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ifengyu/library/account/UserInfo;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()V
    .locals 1

    const-string v0, "sp_login"

    invoke-static {v0}, Lcom/ifengyu/library/a/j;->a(Ljava/lang/String;)Lcom/ifengyu/library/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/a/j;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/library/account/a;->a:Lcom/ifengyu/library/account/UserInfo;

    sput-object v0, Lcom/ifengyu/library/account/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "sp_login"

    invoke-static {v0}, Lcom/ifengyu/library/a/j;->a(Ljava/lang/String;)Lcom/ifengyu/library/a/j;

    move-result-object v0

    invoke-static {p0}, Lcom/ifengyu/library/a/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_info"

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/library/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/ifengyu/library/account/a;->a:Lcom/ifengyu/library/account/UserInfo;

    iget-object v0, p0, Lcom/ifengyu/library/account/UserInfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ifengyu/library/account/UserInfo;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    sput-object v0, Lcom/ifengyu/library/account/a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/account/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/account/a;->c()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ifengyu/library/account/a;->c()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/ifengyu/library/account/UserInfo;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Lcom/ifengyu/library/account/UserInfo;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/account/a;->a:Lcom/ifengyu/library/account/UserInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/account/a;->d()V

    :cond_0
    sget-object v0, Lcom/ifengyu/library/account/a;->a:Lcom/ifengyu/library/account/UserInfo;

    return-object v0
.end method

.method public static d()V
    .locals 3

    const-string v0, "sp_login"

    invoke-static {v0}, Lcom/ifengyu/library/a/j;->a(Ljava/lang/String;)Lcom/ifengyu/library/a/j;

    move-result-object v0

    const-string v1, "user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/a/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/ifengyu/library/a/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/account/UserInfo;

    sput-object v0, Lcom/ifengyu/library/account/a;->a:Lcom/ifengyu/library/account/UserInfo;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/ifengyu/library/account/UserInfo;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    sput-object v1, Lcom/ifengyu/library/account/a;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method
