.class Lcom/xiaomi/push/service/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v4, p1

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v1, p1, v3

    if-eqz v1, :cond_2

    const-string v5, "com.xiaomi"

    iget-object v6, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    invoke-static {v2}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/o;->c()Z

    move-result v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/o;->a()V

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    invoke-static {v0}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v0

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/m;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/m;->a(Lcom/xiaomi/push/service/m;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto/16 :goto_1
.end method
