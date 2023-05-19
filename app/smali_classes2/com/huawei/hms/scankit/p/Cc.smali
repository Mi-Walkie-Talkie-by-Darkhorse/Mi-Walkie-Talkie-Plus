.class public Lcom/huawei/hms/scankit/p/Cc;
.super Ljava/lang/Object;
.source "CountryCodeBean.java"


# static fields
.field private static final a:Ljava/lang/String; = "Cc"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNKNOWN"

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Cc;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Cc;->c:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/Cc;->a(Landroid/content/Context;Z)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Cc;->c:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Cc;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 1

    const-string p2, "get CountryCode error"

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getIssueCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Cc;->c:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Cc;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/huawei/hms/scankit/p/Cc;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "getCountryCode unknown"

    :try_start_1
    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p1, Lcom/huawei/hms/scankit/p/Cc;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :catch_1
    sget-object p1, Lcom/huawei/hms/scankit/p/Cc;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Cc;->c:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/Cc;->c:Ljava/lang/String;

    return-object v0
.end method
