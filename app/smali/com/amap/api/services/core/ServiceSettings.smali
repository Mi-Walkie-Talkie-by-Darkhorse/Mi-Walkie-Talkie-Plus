.class public Lcom/amap/api/services/core/ServiceSettings;
.super Ljava/lang/Object;
.source "ServiceSettings.java"


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final ENGLISH:Ljava/lang/String; = "en"

.field public static final HTTP:I = 0x1

.field public static final HTTPS:I = 0x2

.field private static c:Lcom/amap/api/services/core/ServiceSettings;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v1, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return-void
.end method

.method public static getInstance()Lcom/amap/api/services/core/ServiceSettings;
    .locals 1

    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/core/ServiceSettings;

    invoke-direct {v0}, Lcom/amap/api/services/core/ServiceSettings;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    :cond_0
    sget-object v0, Lcom/amap/api/services/core/ServiceSettings;->c:Lcom/amap/api/services/core/ServiceSettings;

    return-object v0
.end method


# virtual methods
.method public destroyInnerAsynThreadPool()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ServiceSettings"

    const-string v2, "destroyInnerAsynThreadPool"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConnectionTimeOut()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    return v0
.end method

.method public getSoTimeOut()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/amap/api/col/sl/br;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setConnectionTimeOut(I)V
    .locals 2

    const/16 v1, 0x7530

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    :goto_0
    return-void

    :cond_0
    if-le p1, v1, :cond_1

    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->d:I

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zh-CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/amap/api/services/core/ServiceSettings;->a:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->b:I

    return-void
.end method

.method public setSoTimeOut(I)V
    .locals 2

    const/16 v1, 0x7530

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    :goto_0
    return-void

    :cond_0
    if-le p1, v1, :cond_1

    iput v1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/amap/api/services/core/ServiceSettings;->e:I

    goto :goto_0
.end method
