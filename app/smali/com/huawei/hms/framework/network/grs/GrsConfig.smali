.class public Lcom/huawei/hms/framework/network/grs/GrsConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private appName:Ljava/lang/String;

.field private countrySource:Ljava/lang/String;

.field private issueCountry:Ljava/lang/String;

.field private regCountry:Ljava/lang/String;

.field private serCountry:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equal(Lcom/huawei/hms/framework/network/grs/GrsConfig;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->serCountry:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getSerCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->regCountry:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getRegCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->issueCountry:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getIssueCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getuserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->countrySource:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsConfig;->getCountrySource()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/StringUtils;->strEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->countrySource:Ljava/lang/String;

    return-object v0
.end method

.method public getGrsBaseInfo(Landroid/content/Context;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    .locals 2

    new-instance v0, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->serCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setSerCountry(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/huawei/hms/framework/common/PackageUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setVersionName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->appName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setAppName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->userId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setUid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->regCountry:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setRegCountry(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->issueCountry:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setIssueCountry(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->countrySource:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->setCountrySource(Ljava/lang/String;)V

    return-object v0
.end method

.method public getIssueCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->issueCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getRegCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->regCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getSerCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->serCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getuserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCountrySource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->countrySource:Ljava/lang/String;

    return-void
.end method

.method public setIssueCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->issueCountry:Ljava/lang/String;

    return-void
.end method

.method public setRegCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->regCountry:Ljava/lang/String;

    return-void
.end method

.method public setSerCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->serCountry:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsConfig;->versionName:Ljava/lang/String;

    return-void
.end method
