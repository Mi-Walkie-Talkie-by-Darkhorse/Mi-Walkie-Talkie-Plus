.class public Lcom/huawei/hms/framework/network/grs/c/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private c:Lcom/huawei/hms/framework/network/grs/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/a/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c/c;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c/c;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/a/a;->a()Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v0

    const-string v1, "geoipCountryCode"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "geoip.countrycode"

    const-string v3, "ROOT"

    invoke-static {v0, v1, v3}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geoIpCountry is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GeoipCountry"

    invoke-static {v5, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c/c;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-virtual {v4}, Lcom/huawei/hms/framework/network/grs/a/a;->a()Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v4

    const-string v6, "geoipCountryCodetime"

    const-string v7, "0"

    invoke-virtual {v4, v6, v7}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_0

    const-string v6, "\\d+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v6, "convert urlParamKey from String to Long catch NumberFormatException."

    invoke-static {v5, v6, v4}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/d/e;->a(Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    new-instance v4, Lcom/huawei/hms/framework/network/grs/c/b/c;

    iget-object v6, p0, Lcom/huawei/hms/framework/network/grs/c/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v7, p0, Lcom/huawei/hms/framework/network/grs/c/c;->a:Landroid/content/Context;

    invoke-direct {v4, v6, v7}, Lcom/huawei/hms/framework/network/grs/c/b/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/huawei/hms/framework/network/grs/c/b/c;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/huawei/hms/framework/network/grs/c/c;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-virtual {v6}, Lcom/huawei/hms/framework/network/grs/a/a;->c()Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const-string v8, "services"

    invoke-virtual {v6, v8, v2}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {v4}, Lcom/huawei/hms/framework/network/grs/c/b/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/huawei/hms/framework/network/grs/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v9, "getGeoipCountry merge services occure jsonException."

    invoke-static {v5, v9, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v7

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6, v8, v2}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/c;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/a/a;->b()Lcom/huawei/hms/framework/network/grs/c/m;

    move-result-object p1

    invoke-virtual {p1, v4, v1, v6}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/c/f;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/c/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v3}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync request to query geoip.countrycode is:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string p1, "async request to query geoip.countrycode"

    invoke-static {v5, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/c/c;->c:Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/a/a;->b()Lcom/huawei/hms/framework/network/grs/c/m;

    move-result-object p1

    invoke-virtual {p1, v4, v7, v1, v6}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V

    :cond_5
    :goto_2
    return-object v0
.end method
