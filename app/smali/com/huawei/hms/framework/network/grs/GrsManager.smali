.class public Lcom/huawei/hms/framework/network/grs/GrsManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hms/framework/network/restclient/hwhttp/plugin/BasePlugin;


# static fields
.field private static final GRS_KEY_INDEX:I = 0x1

.field private static final GRS_PATH_INDEX:I = 0x2

.field private static final GRS_SCHEMA:Ljava/lang/String; = "grs://"

.field private static final GRS_SERVICE_INDEX:I = 0x0

.field private static final MAX_GRS_SPLIT:I = 0x3

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "GrsManager"

.field private static volatile instance:Lcom/huawei/hms/framework/network/grs/GrsManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private grsConfig:Lcom/huawei/hms/framework/network/grs/GrsConfig;

.field private grsInterceptor:Lcom/huawei/hms/framework/network/grs/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/framework/network/grs/GrsManager;
    .locals 2

    sget-object v0, Lcom/huawei/hms/framework/network/grs/GrsManager;->instance:Lcom/huawei/hms/framework/network/grs/GrsManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/huawei/hms/framework/network/grs/GrsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/huawei/hms/framework/network/grs/GrsManager;->instance:Lcom/huawei/hms/framework/network/grs/GrsManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/huawei/hms/framework/network/grs/GrsManager;

    invoke-direct {v1}, Lcom/huawei/hms/framework/network/grs/GrsManager;-><init>()V

    sput-object v1, Lcom/huawei/hms/framework/network/grs/GrsManager;->instance:Lcom/huawei/hms/framework/network/grs/GrsManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/hms/framework/network/grs/GrsManager;->instance:Lcom/huawei/hms/framework/network/grs/GrsManager;

    return-object v0
.end method

.method private getServiceNameUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/network/grs/GrsApi;->synGetGrsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static isGRSSchema(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "grs://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseGRSSchema(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "grs://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getInterceptor()Lcom/huawei/hms/framework/network/restclient/hwhttp/plugin/PluginInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsManager;->grsInterceptor:Lcom/huawei/hms/framework/network/grs/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/hms/framework/network/grs/f;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/f;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsManager;->grsInterceptor:Lcom/huawei/hms/framework/network/grs/f;

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsManager;->grsInterceptor:Lcom/huawei/hms/framework/network/grs/f;

    return-object v0
.end method

.method public initGrs(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsConfig;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsManager;->grsConfig:Lcom/huawei/hms/framework/network/grs/GrsConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->equal(Lcom/huawei/hms/framework/network/grs/GrsConfig;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/GrsManager;->grsConfig:Lcom/huawei/hms/framework/network/grs/GrsConfig;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsManager;->grsConfig:Lcom/huawei/hms/framework/network/grs/GrsConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getGrsBaseInfo(Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object p2

    :cond_2
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/network/grs/GrsApi;->grsSdkInit(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)I

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected parseGrs(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "grs://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v3}, Lcom/huawei/hms/framework/common/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/GrsManager;->parseGRSSchema(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    aget-object v1, p1, v3

    const-string v2, "ROOT"

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/huawei/hms/framework/network/grs/GrsManager;->getServiceNameUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    array-length v1, p1

    if-lt v1, v4, :cond_2

    aget-object v1, p1, v3

    aget-object v2, p1, v2

    goto :goto_0

    :cond_2
    const-string v1, "GrsManager"

    const-string v2, "parseGrs params.length<1."

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    array-length v2, p1

    if-le v2, v4, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    return-object v1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "can not get url, do grsUrl(serviceName or key) error?"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
